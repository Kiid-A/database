//===----------------------------------------------------------------------===//
//
//                         BusTub
//
// extendible_htable_directory_page.cpp
//
// Identification: src/storage/page/extendible_htable_directory_page.cpp
//
// Copyright (c) 2015-2023, Carnegie Mellon University Database Group
//
//===----------------------------------------------------------------------===//

/**
 * | Catagory | depth of bucket |
 *
 * When bucket is full, we gotta increase global depth to make it easier for determine the very bucket
 * e.g. 010 -> 0010 1010, plus 1 << global deplth
 */

#include "storage/page/extendible_htable_directory_page.h"

#include <algorithm>
#include <unordered_map>

#include "common/config.h"
#include "common/logger.h"

#define err printf("oversize!\n");

namespace bustub {

void ExtendibleHTableDirectoryPage::Init(uint32_t max_depth) {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  max_depth_ = max_depth;
  global_depth_ = 0;
  std::fill(local_depths_, local_depths_ + (1 << max_depth_), 0);
  std::fill(bucket_page_ids_, bucket_page_ids_ + (1 << max_depth_), INVALID_PAGE_ID);
}

auto ExtendibleHTableDirectoryPage::HashToBucketIndex(uint32_t hash) const -> uint32_t {
  return hash & GetGlobalDepthMask();
}

auto ExtendibleHTableDirectoryPage::GetGlobalDepthMask() const -> uint32_t { return (1U << global_depth_) - 1; }

auto ExtendibleHTableDirectoryPage::GetBucketPageId(uint32_t bucket_idx) const -> page_id_t {
  if (bucket_idx >= (1U << max_depth_)) {
    err return INVALID_PAGE_ID;
  }

  return bucket_page_ids_[bucket_idx];
}

void ExtendibleHTableDirectoryPage::SetBucketPageId(uint32_t bucket_idx, page_id_t bucket_page_id) {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  if (bucket_idx >= (1U << max_depth_)) {
    err return;
  }

  bucket_page_ids_[bucket_idx] = bucket_page_id;
}

auto ExtendibleHTableDirectoryPage::GetSplitImageIndex(uint32_t bucket_idx) const -> uint32_t {
  if (bucket_idx >= (1U << max_depth_)) {
    printf("get split idx overflow\n");
    return 0;
  }

  return bucket_idx + (1 << (global_depth_ - 1));
}

auto ExtendibleHTableDirectoryPage::GetGlobalDepth() const -> uint32_t { return global_depth_; }

/* update the bucket to new global_depth here */
void ExtendibleHTableDirectoryPage::IncrGlobalDepth() {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  if (global_depth_ >= (1U << max_depth_)) {
    printf("incre overflow\n");
    return;
  }

  for (int i = 0; i < (1 << global_depth_); i++) {
    local_depths_[i + (1 << global_depth_)] = local_depths_[i];
    bucket_page_ids_[i + (1 << global_depth_)] = bucket_page_ids_[i];
  }

  global_depth_++;
}

/* no need to update, since it is not accessible */
void ExtendibleHTableDirectoryPage::DecrGlobalDepth() {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  if (global_depth_ <= 0) {
    err return;
  }

  global_depth_--;
}

/* when the fucking directory can be shrunk?
  all in the depth!
*/
auto ExtendibleHTableDirectoryPage::CanShrink() -> bool {
  if (global_depth_ == 0) {
    return false;
  }

  for (uint32_t i = 0; i < Size(); i++) {
    if (local_depths_[i] == global_depth_) {
      return false;
    }
  }

  return true;
}

auto ExtendibleHTableDirectoryPage::Size() const -> uint32_t { return 1 << global_depth_; }

auto ExtendibleHTableDirectoryPage::GetLocalDepth(uint32_t bucket_idx) const -> uint32_t {
  if (bucket_idx >= (1U << max_depth_)) {
    err return 0;
  }

  return local_depths_[bucket_idx];
}

void ExtendibleHTableDirectoryPage::SetLocalDepth(uint32_t bucket_idx, uint8_t local_depth) {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  if (bucket_idx >= (1U << max_depth_)) {
    return;
  }

  local_depths_[bucket_idx] = local_depth;
}

void ExtendibleHTableDirectoryPage::IncrLocalDepth(uint32_t bucket_idx) {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  if (local_depths_[bucket_idx] < global_depth_) {
    local_depths_[bucket_idx]++;
  }
}

void ExtendibleHTableDirectoryPage::DecrLocalDepth(uint32_t bucket_idx) {
  // throw NotImplementedException("ExtendibleHTableDirectoryPage is not implemented");
  if (local_depths_[bucket_idx] > 0) {
    local_depths_[bucket_idx]--;
  }
}

auto ExtendibleHTableDirectoryPage::GetLocalDepthMask(uint32_t bucket_idx) const -> uint32_t {
  if (bucket_idx >= static_cast<uint32_t>(1 << global_depth_)) {
    throw std::out_of_range("Bucket index out of range");
  }
  uint32_t local_depth = local_depths_[bucket_idx];
  return 1 << (local_depth - 1);
}

auto ExtendibleHTableDirectoryPage::GetMaxDepth() const -> uint32_t { return max_depth_; }
}  // namespace bustub
