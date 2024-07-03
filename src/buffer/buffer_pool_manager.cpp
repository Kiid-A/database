//===----------------------------------------------------------------------===//
//
//                         BusTub
//
// buffer_pool_manager.cpp
//
// Identification: src/buffer/buffer_pool_manager.cpp
//
// Copyright (c) 2015-2021, Carnegie Mellon University Database Group
//
//===----------------------------------------------------------------------===//

/** My EXP:
 *  1. Pay attention to when and how every variable updates
 *  2. Get used to basic fnc in class
 *  3. Mind the W/R bool, do not get overwhelmed
 */

#include "buffer/buffer_pool_manager.h"
#include <cstdlib>

#include "common/exception.h"
#include "common/macros.h"
#include "storage/page/page_guard.h"

#define deb for (auto it = page_table_.begin(); it != page_table_.end(); it++) { \
              printf("pgt: page_id %d frame_id %d\n", it->first, it->second); \
            } \
            printf("\n");

namespace bustub {

BufferPoolManager::BufferPoolManager(size_t pool_size, DiskManager *disk_manager, size_t replacer_k,
                                     LogManager *log_manager)
    : pool_size_(pool_size), disk_scheduler_(std::make_unique<DiskScheduler>(disk_manager)), log_manager_(log_manager) {
  // TODO(students): remove this line after you have implemented the buffer pool manager
  // throw NotImplementedException(
  // "BufferPoolManager is not implemented yet. If you have finished implementing BPM, please remove the throw "
  // "exception line in `buffer_pool_manager.cpp`.");

  // we allocate a consecutive memory space for the buffer pool
  pages_ = new Page[pool_size_];
  replacer_ = std::make_unique<LRUKReplacer>(pool_size, replacer_k);

  // Initially, every page is in the free list.
  for (size_t i = 0; i < pool_size_; ++i) {
    free_list_.emplace_back(static_cast<int>(i));
  }
}

BufferPoolManager::~BufferPoolManager() { delete[] pages_; }

auto BufferPoolManager::NewPage(page_id_t *page_id) -> Page * 
{ 
  // deb
  Page *page;
  frame_id_t frame_id = -1;
  
  std::scoped_lock lock(latch_);
  
  if (!free_list_.empty()) {
    frame_id = free_list_.back();
    free_list_.pop_back();
    page = pages_ + frame_id;
    
    // empty freelist
  } else {
    // no evictable frame 
    if (!replacer_->Evict(&frame_id)) {
      return nullptr;
    }
    page = pages_ + frame_id;
  }

  // write back dirty page first
  if (page->IsDirty()) {
    auto promise =  disk_scheduler_->CreatePromise();
    auto future = promise.get_future();
    disk_scheduler_->Schedule({true, page->GetData(), 
                            page->GetPageId(), std::move(promise)});
    future.get();
    page->is_dirty_ = false;
  }

  // create a new page
  *page_id = AllocatePage();
  page_table_.erase(page->GetPageId());
  page_table_.emplace(*page_id, frame_id);

  page->page_id_ = *page_id;
  page->pin_count_ = 1;
  page->ResetMemory();

  replacer_->RecordAccess(frame_id);
  replacer_->SetEvictable(frame_id, false);

  return page; 
}

auto BufferPoolManager::FetchPage(page_id_t page_id, [[maybe_unused]] AccessType access_type) -> Page * 
{ 
  deb
  if (page_id == INVALID_PAGE_ID) {
    return nullptr;
  }

  std::scoped_lock lock(latch_);
  // from page table. Remember to update replacer
  if (page_table_.find(page_id) != page_table_.end()) {
    auto frame_id = page_table_[page_id];
    auto page = pages_ + frame_id;

    replacer_->RecordAccess(frame_id);
    replacer_->SetEvictable(frame_id, false);

    page->pin_count_ += 1;
    return page;
  }

  // from free list --from NewPage()
  Page *page;
  frame_id_t frame_id = -1;
  if (!free_list_.empty()) {
    frame_id = free_list_.back();
    free_list_.pop_back();
    page = pages_ + frame_id;
    
    // empty freelist
  } else {
    // no evictable frame 
    if (!replacer_->Evict(&frame_id)) {
      return nullptr;
    }
    page = pages_ + frame_id;
  }

  // write back dirty page first
  if (page->IsDirty()) {
    auto promise =  disk_scheduler_->CreatePromise();
    auto future = promise.get_future();
    disk_scheduler_->Schedule({true, page->GetData(), 
                            page->GetPageId(), std::move(promise)});
    future.get();
    page->is_dirty_ = false;
  }

  // gotta replace the old frame in both buffer and disk
  page_table_.erase(page->GetPageId());
  page_table_.emplace(page_id, frame_id);
  page->page_id_ = page_id;
  page->pin_count_ = 1;
  page->ResetMemory();

  replacer_->RecordAccess(frame_id);
  replacer_->SetEvictable(frame_id, false);

  // read after writing
  auto promise =  disk_scheduler_->CreatePromise();
  auto future = promise.get_future();
  disk_scheduler_->Schedule({false, page->GetData(), 
                            page->GetPageId(), std::move(promise)});
  future.get();

  return page; 
}

auto BufferPoolManager::UnpinPage(page_id_t page_id, bool is_dirty, [[maybe_unused]] AccessType access_type) -> bool 
{
  // deb
  if (page_id == INVALID_PAGE_ID) {
    return false;
  }

  std::scoped_lock lock(latch_);

  if (page_table_.find(page_id) == page_table_.end()) {
    return false;
  }

  auto frame_id = page_table_[page_id];
  auto page = pages_ + frame_id;

  // set dirty
  page->is_dirty_ = page->is_dirty_ || is_dirty;

  if (page->GetPinCount() == 0) {
    return false;
  }

  page->pin_count_ -= 1;
  if (page->GetPinCount() == 0) {
    replacer_->SetEvictable(frame_id, true);
  }

  return true;
}

auto BufferPoolManager::FlushPage(page_id_t page_id) -> bool {
  // deb
  if (page_id == INVALID_PAGE_ID) {
    return false;
  }

  std::scoped_lock lock(latch_);

  if (page_table_.find(page_id) == page_table_.end()) {
    return false;
  }

  // disk_request -> disk_scheduler -> W/R
  Page *page = pages_ + page_table_[page_id];
  // a promise-future pair for multithread
  auto promise = disk_scheduler_->CreatePromise();
  auto future = promise.get_future();
  disk_scheduler_->Schedule({true, page->GetData(), 
                                page_id, std::move(promise)});
  // get corresponding data after thread is finished
  future.get();

  // unset dirty_flag after flush
  page->is_dirty_ = false;

  return true;
}

void BufferPoolManager::FlushAllPages() {
  // deb
  std::scoped_lock lock(latch_);
  for (size_t cur_size = 0; cur_size < pool_size_; cur_size++) {
    auto page = pages_ + cur_size;
    auto page_id = page->GetPageId();
    if (page_id == INVALID_PAGE_ID) {
      continue;
    }
    
    auto promise = disk_scheduler_->CreatePromise();
    auto future = promise.get_future();
    disk_scheduler_->Schedule({true, page->GetData(), 
                                  page_id, std::move(promise)});
    // get corresponding data after thread is finished
    future.get();

    // unset dirty_flag after flush
    page->is_dirty_ = false;
  }
}

auto BufferPoolManager::DeletePage(page_id_t page_id) -> bool 
{ 
  // deb
  if (page_id == INVALID_PAGE_ID) {
    return true;
  }

  std::scoped_lock lock(latch_);
  
  if (page_table_.find(page_id) != page_table_.end()) {
    auto frame_id = page_table_[page_id];
    auto page = pages_ + frame_id;

    if (page->GetPinCount() != 0) {
      return false;
    }

    // now we can delete that
    page_table_.erase(page_id);
    free_list_.push_back(frame_id);
    replacer_->Remove(frame_id);
    page->ResetMemory();
    page->page_id_ = INVALID_PAGE_ID;
    page->pin_count_ = 0;
    page->is_dirty_ = false;
  }

  DeallocatePage(page_id);
  return true; 
}

auto BufferPoolManager::AllocatePage() -> page_id_t { return next_page_id_++; }

auto BufferPoolManager::FetchPageBasic(page_id_t page_id) -> BasicPageGuard { return {this, nullptr}; }

auto BufferPoolManager::FetchPageRead(page_id_t page_id) -> ReadPageGuard { return {this, nullptr}; }

auto BufferPoolManager::FetchPageWrite(page_id_t page_id) -> WritePageGuard { return {this, nullptr}; }

auto BufferPoolManager::NewPageGuarded(page_id_t *page_id) -> BasicPageGuard { return {this, nullptr}; }

}  // namespace bustub
