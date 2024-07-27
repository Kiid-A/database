#include "storage/page/page_guard.h"
#include "buffer/buffer_pool_manager.h"

namespace bustub {

/**
 * Latch is remembered in guard
 */

BasicPageGuard::BasicPageGuard(BasicPageGuard &&that) noexcept {
  bpm_ = that.bpm_;
  page_ = that.page_;

  that.bpm_ = nullptr;
  that.page_ = nullptr;

  is_dirty_ = that.is_dirty_;
}

void BasicPageGuard::Drop() {
  if (bpm_ != nullptr && page_ != nullptr) {
    bpm_->UnpinPage(page_->GetPageId(), is_dirty_);
  }

  bpm_ = nullptr;
  page_ = nullptr;
}

auto BasicPageGuard::operator=(BasicPageGuard &&that) noexcept -> BasicPageGuard & {
  Drop();  // delete present page at first

  bpm_ = that.bpm_;
  page_ = that.page_;

  that.page_ = nullptr;
  that.bpm_ = nullptr;

  is_dirty_ = that.is_dirty_;

  return *this;
}

BasicPageGuard::~BasicPageGuard() { Drop(); };  // NOLINT

auto BasicPageGuard::UpgradeRead() -> ReadPageGuard {
  if (page_ != nullptr) {
    page_->RLatch();  // why?
  }

  auto readPageGuard = ReadPageGuard(bpm_, page_);

  this->bpm_ = nullptr;
  this->page_ = nullptr;

  return readPageGuard;
}

auto BasicPageGuard::UpgradeWrite() -> WritePageGuard {
  if (page_ != nullptr) {
    page_->WLatch();
  }

  auto writePageGuard = WritePageGuard(bpm_, page_);

  this->bpm_ = nullptr;
  this->page_ = nullptr;

  return writePageGuard;
}

ReadPageGuard::ReadPageGuard(BufferPoolManager *bpm, Page *page) {
  guard_ = {bpm, page};

  bpm = nullptr;
  page = nullptr;
}

ReadPageGuard::ReadPageGuard(ReadPageGuard &&that) noexcept { guard_ = std::move(that.guard_); }

auto ReadPageGuard::operator=(ReadPageGuard &&that) noexcept -> ReadPageGuard & {
  Drop();
  guard_ = std::move(that.guard_);
  return *this;
}

void ReadPageGuard::Drop() {
  if (guard_.page_ != nullptr) {
    guard_.page_->RUnlatch();
  }

  guard_.Drop();
}

ReadPageGuard::~ReadPageGuard() { Drop(); }  // NOLINT

WritePageGuard::WritePageGuard(BufferPoolManager *bpm, Page *page) {
  guard_ = {bpm, page};

  bpm = nullptr;
  page = nullptr;
}

WritePageGuard::WritePageGuard(WritePageGuard &&that) noexcept { guard_ = std::move(that.guard_); };

auto WritePageGuard::operator=(WritePageGuard &&that) noexcept -> WritePageGuard & {
  Drop();
  guard_ = std::move(that.guard_);
  return *this;
}

void WritePageGuard::Drop() {
  if (guard_.page_ != nullptr) {
    guard_.page_->WUnlatch();
  }

  guard_.is_dirty_ = true;  // remember
  guard_.Drop();
}

WritePageGuard::~WritePageGuard() { Drop(); }  // NOLINT

}  // namespace bustub
