//===----------------------------------------------------------------------===//
//
//                         BusTub
//
// lru_k_replacer.cpp
//
// Identification: src/buffer/lru_k_replacer.cpp
//
// Copyright (c) 2015-2022, Carnegie Mellon University Database Group
//
//===----------------------------------------------------------------------===//

/** my experience:
 *  determine details of programme
 *  what it stands for, when it is updated. all details counts!
 */

#include "buffer/lru_k_replacer.h"
#include <algorithm>
#include <mutex>
#include "common/exception.h"

#define debug printf("current size: %lu, frame id: %d\n", curr_size_, *frame_id);
#define debugS printf("current size: %lu, frame id: %d\n", curr_size_, frame_id);
#define p for (auto it : new_node) { \
            printf("id: %d k: %lu ", it.first, it.second); \
        } \
        printf("\n"); \
        for (auto it : cached_node) { \
            printf("id: %d k: %lu ", it.first, it.second); \
        } \
        printf("\n");

namespace bustub {

LRUKReplacer::LRUKReplacer(size_t num_frames, size_t k) 
    :replacer_size_(num_frames), 
    k_(k) 
{}

auto LRUKReplacer::Cmp(const frame_k f_1, const frame_k f_2) -> bool
{
    return f_1.second < f_2.second;
}

auto LRUKReplacer::Evict(frame_id_t *frame_id) -> bool 
{ 
    std::lock_guard<std::mutex> lock(latch_);
    current_timestamp_++;

    for (auto it = new_node.begin(); it != new_node.end(); it++) {
        auto fid = it->first;
        auto node = node_store_[fid];
        // it shall be inf one
        if (node.isEvictable()) {
            curr_size_--;
            node_store_.erase(fid);
            new_node.remove(*it);
            *frame_id = fid;
            debug
            p
            return true;
        }
    }    

    for (auto it = cached_node.begin(); it != cached_node.end(); it++) {
        auto fid = it->first;
        auto node = node_store_[fid];
        if (node.isEvictable()) {
            curr_size_--;
            node_store_.erase(fid);
            cached_node.remove(*it);
            *frame_id = fid;
            debug
            p
            return true;
        }
    }

    // can not find valid frame
    return false;
}

void LRUKReplacer::RecordAccess(frame_id_t frame_id, [[maybe_unused]] AccessType access_type) 
{
    std::lock_guard<std::mutex> lock(latch_);
    if (frame_id > static_cast<frame_id_t>(replacer_size_)) {
        throw std::exception();
    }

    current_timestamp_++;

    // new record
    if (!node_store_.count(frame_id)) {
        // it's full now
        if (curr_size_ == replacer_size_) {
            frame_id_t fid;
            Evict(&fid);
        }
        // LRU first, then compare the timestamp
        // new_node.push_front(frame_id);
        node_store_[frame_id].setTimestamp(current_timestamp_);
        frame_k target(frame_id, 1);
        auto it = std::upper_bound(new_node.begin(), new_node.end(), target, Cmp);
        new_node.insert(it, target);

        curr_size_++;
    
    } else {
        // add it to cached_node if cnt == k, or update its position in cached_node
        size_t cntK = node_store_[frame_id].getK();
        if (cntK < k_) {
            node_store_[frame_id].setK(cntK + 1);
            node_store_[frame_id].setTimestamp(current_timestamp_);
            size_t k = node_store_[frame_id].getK();
            frame_k target(frame_id, k);
            new_node.remove(frame_k(frame_id, cntK));

            auto it = std::upper_bound(new_node.begin(), new_node.end(), target, Cmp);
            new_node.insert(it, target);

        } else if (cntK == k_) {
            node_store_[frame_id].setK(cntK + 1);
            node_store_[frame_id].setTimestamp(current_timestamp_);
            frame_k target(frame_id, cntK + 1);
            new_node.remove(frame_k(frame_id, cntK));
            
            // put it on list according to its Kth timestamp
            auto it = std::upper_bound(cached_node.begin(), cached_node.end(), target, Cmp);
            cached_node.insert(it, target);

        } else if (cntK > k_) {
            node_store_[frame_id].setK(cntK + 1);
            node_store_[frame_id].setTimestamp(current_timestamp_);
            frame_k target(frame_id, cntK + 1);
            cached_node.remove(frame_k(frame_id, cntK));

            auto it = std::upper_bound(cached_node.begin(), cached_node.end(), target, Cmp);
            cached_node.insert(it, target);
        }
    }

    debugS
    for (auto it : new_node) {
        printf("id: %d k: %lu ", it.first, it.second);
    }
    printf("\n");
}

void LRUKReplacer::SetEvictable(frame_id_t frame_id, bool set_evictable) 
{
    std::lock_guard<std::mutex> lock(latch_);
    current_timestamp_++;

    if (!node_store_.count(frame_id)) {
        return;
    }

    auto status = node_store_[frame_id].isEvictable();
    node_store_[frame_id].setEvictable(set_evictable);

    // there are 2 conditions that size shall be changed: TF->- FT->+
    if (status && !set_evictable) {
        curr_size_--;
        replacer_size_--;
    }

    if (!status && set_evictable) {
        curr_size_++;
        replacer_size_++;
    }

    debugS
    p
}

void LRUKReplacer::Remove(frame_id_t frame_id) 
{
    std::lock_guard<std::mutex> lock(latch_);
    current_timestamp_++;

    if (frame_id > static_cast<frame_id_t>(replacer_size_)) {
        throw std::exception();
    }

    if (!node_store_.count(frame_id)) {
        return;
    }

    auto node = node_store_[frame_id];
    auto kth_time = node.getKthTime(k_);
    if (!node.isEvictable()) {
        throw std::exception();
    }

    // delete from different list
    if (node.getK() < k_) {
        new_node.remove(frame_k(frame_id, kth_time));
    } else {
        cached_node.remove(frame_k(frame_id, kth_time));
    }

    curr_size_--;
    node_store_.erase(frame_id);

    debugS
    p
}

auto LRUKReplacer::Size() -> size_t { return curr_size_; }

}  // namespace bustub
