import 'dart:collection';

class RecentCounter {
  ListQueue<int> queue = ListQueue();

  RecentCounter() {}

  int ping(int t) {
    queue.add(t);
    while (queue.isNotEmpty && (t - 3000 > queue.first)) {
      queue.removeFirst();
    }
    
    return queue.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */