class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;

    Map<String, String> mapS = {};
    Map<String, String> mapT = {};

    for (int i = 0; i < s.length; i++) {
      String charS = s[i];
      String charT = t[i];

      if (mapS.containsKey(charS)) {
        if (mapS[charS] != charT) {
          return false;
        }
      } else {
        mapS[charS] = charT;
      }

      if (mapT.containsKey(charT)) {
        if (mapT[charT] != charS) {
          return false;
        }
      } else {
        mapT[charT] = charS;
      }
    }

    return true;
  }
}