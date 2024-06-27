#include "primer/trie.h"
#include <cstddef>
#include <memory>
#include <ostream>
#include <string_view>
#include "common/exception.h"

#define debug printf("%d\n", cnt++);

int cnt = 0;

namespace bustub {

template <class T>
auto Trie::Get(std::string_view key) const -> const T * {
  debug
  // throw NotImplementedException("Trie::Get is not implemented.");  

  // You should walk through the trie to find the node corresponding to the key. If the node doesn't exist, return
  // nullptr. After you find the node, you should use `dynamic_cast` to cast it to `const TrieNodeWithValue<T> *`. If
  // dynamic_cast returns `nullptr`, it means the type of the value is mismatched, and you should return nullptr.
  // Otherwise, return the value.

  // printf("input: %s\n", key.data());
  // printf("input len: %lu\n", key.size());

  if (root_ == nullptr) {
    return nullptr;
  }

  auto node = std::shared_ptr<TrieNode>(root_->Clone());
  if (key.empty()) {
    auto target = dynamic_cast<const TrieNodeWithValue<T> *> (node.get());

    if (target == nullptr) {
      return nullptr;
    } else {
      // std::cout << *(int *)target->value_.get() << std::endl;
      return target->value_.get();
    }
  }

  for (size_t i = 0; i < key.size(); i++) {
    char ch = key[i];
    if (node->children_[ch] != nullptr) {
      node = node->children_[ch]->Clone();
    } else {
      return nullptr;
    }
  }

  auto target = dynamic_cast<const TrieNodeWithValue<T> *> (node.get());

  if (target == nullptr) {
    return nullptr;
  } else {
    // std::cout << *(int *)target->value_.get() << std::endl;
    return target->value_.get();
  }
}

template <class T>
auto Trie::Put(std::string_view key, T value) const -> Trie {
  debug
  // Note that `T` might be a non-copyable type. Always use `std::move` when creating `shared_ptr` on that value.
  // throw NotImplementedException("Trie::Put is not implemented.");
  // printf("input: %s", key.data());
  // You should walk through the trie and create new nodes if necessary. If the node corresponding to the key already
  // exists, you should create a new `TrieNodeWithValue`.

  auto newRoot = std::shared_ptr<TrieNode>(root_->Clone());
  
  // return the origin tree if key is empty
  if (key.empty()) {
    newRoot = std::make_shared<TrieNodeWithValue<T>>(newRoot->children_, std::make_shared<T>(std::move(value)));
    return Trie(newRoot);
  }

  auto node = newRoot;

  for (size_t i = 0; i < key.size(); i++) {
    char ch = key[i];
    if (node->children_[ch] == nullptr) {
      if (i != key.size() - 1) {
        node->children_[ch] = std::make_shared<const TrieNode>();
        // node = node->children_[ch]->Clone();
      } else {
        node->children_[ch] = std::make_shared<TrieNodeWithValue<T>>(std::make_shared<T>(std::move(value)));
        return Trie(newRoot);
      }
    } 

    // not empty
    auto predNode = node;
    node = node->children_[ch]->Clone();
    if (i == key.size() - 1) {
      node = std::make_shared<TrieNodeWithValue<T>>(node->children_, std::make_shared<T>(std::move(value)));
      predNode->children_[ch] = node;
      return Trie(newRoot);
    }
    // what best matches the mtfk COW!!!
    predNode->children_[ch] = node;
  }

  return Trie(newRoot);
}

auto Trie::Remove(std::string_view key) const -> Trie {
  debug
  // throw NotImplementedException("Trie::Remove is not implemented.");

  // You should walk through the trie and remove nodes if necessary. If the node doesn't contain a value any more,
  // you should convert it to `TrieNode`. If a node doesn't have children any more, you should remove it.
  
  std::shared_ptr<TrieNode> newRoot = root_->Clone();
  std::vector<std::shared_ptr<TrieNode>> path;

  if (key.empty()) {
    newRoot = std::make_shared<TrieNode>(TrieNode(newRoot->children_));
    return Trie(newRoot);
  }

  auto node = newRoot;
  path.push_back(node);
  for (size_t i = 0; i < key.size(); i++) {
    char ch = key[i];
    // this key not exist
    if (node->children_.count(ch) == 0) {
      return Trie(root_);
    } else {
      // turn to TrieNode without a value
      if (i == key.size() - 1) {
        if (!node->children_[ch]->is_value_node_) {
          return Trie(root_);
        }
        node = std::make_shared<TrieNode>(TrieNode(node->children_[ch]->children_));
      } else {
        node = node->children_[ch]->Clone();
      }
      path.push_back(node);
    }
  }

  for (size_t i = key.size(); i > 0; i--) {
    char ch = key[i - 1];
    // delete that if empty, after all we gotta update it!
    if (path[i]->children_.empty() && !path[i]->is_value_node_) {
      path[i - 1]->children_.erase(ch);
      // printf("delete: %c\n", ch);
    } else {
      path[i - 1]->children_[ch] = path[i];
    } 
  }

  if (path[0]->children_.empty() && !path[0]->is_value_node_) {
    path[0] = nullptr;
  }

  return Trie(path[0]);
}

// Below are explicit instantiation of template functions.
//
// Generally people would write the implementation of template classes and functions in the header file. However, we
// separate the implementation into a .cpp file to make things clearer. In order to make the compiler know the
// implementation of the template functions, we need to explicitly instantiate them here, so that they can be picked
// up by the linker.

template auto Trie::Put(std::string_view key, uint32_t value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const uint32_t *;

template auto Trie::Put(std::string_view key, uint64_t value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const uint64_t *;

template auto Trie::Put(std::string_view key, std::string value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const std::string *;

// If your solution cannot compile for non-copy tests, you can remove the below lines to get partial score.

using Integer = std::unique_ptr<uint32_t>;

template auto Trie::Put(std::string_view key, Integer value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const Integer *;

template auto Trie::Put(std::string_view key, MoveBlocked value) const -> Trie;
template auto Trie::Get(std::string_view key) const -> const MoveBlocked *;

}  // namespace bustub
