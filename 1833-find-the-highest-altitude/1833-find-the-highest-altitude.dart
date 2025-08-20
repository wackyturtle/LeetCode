class Solution {
  int largestAltitude(List<int> gain) {
    int large = 0;
    int sum = 0;

    for (int i = 0; i < gain.length; i++) {
      sum += gain[i];
      large = sum > large ? sum : large;
    }

    return large;
  }
}