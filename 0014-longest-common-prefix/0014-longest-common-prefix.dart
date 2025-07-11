class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String integ = strs[0];

    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(integ)) {
        integ = integ.substring(0, integ.length - 1);
        if (integ.isEmpty) return "";
      }
    }

    return integ;
  }
}