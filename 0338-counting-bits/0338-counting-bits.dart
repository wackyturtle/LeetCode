class Solution {
  List<int> countBits(int n) {
    List<int> count = List<int>.filled(n + 1, 0);
    int set = 1;
    for (var i = 1; i <= n; i++) {
      if (set * 2 == i) set = i; // 새 블록 시작(2^k 경계)
      count[i] = 1 + count[i - set];
    }
    return count;
  }
}