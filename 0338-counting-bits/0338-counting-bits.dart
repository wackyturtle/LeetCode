class Solution {
  List<int> countBits(int n) {
    List<int> count = List<int>.filled(n + 1, 0);
    int set = 1;
    for (var i = 1; i <= n; i++) {
      if (set * 2 == i) set = i;
      count[i] = 1 + count[i - set];
    }
    return count;
  }
}