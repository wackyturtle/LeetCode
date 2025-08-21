class Solution {
  int romanToInt(String s) {
    final Map<String, int> roma = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;

    for (int i = 0; i < s.length; i++) {
      final int cur = roma[s[i]]!;
      final int next = (i + 1 < s.length)
          ? roma[s[i + 1]]!
          : 0;

      if (cur < next) {
        result -= cur;
      } else {
        result += cur;
      }
    }
    return result;
  }
}