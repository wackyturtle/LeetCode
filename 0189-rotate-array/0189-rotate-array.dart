import 'dart:collection';

class Solution {
  void rotate(List<int> nums, int k) {
    ListQueue<int> queue = ListQueue.from(nums);

    for (int i = 0; i < k; i++) {
      queue.addFirst(queue.last);
      queue.removeLast();
    }
    nums.clear();
    nums.addAll(queue);
  }
}