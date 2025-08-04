class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];
    int n = nums.length;

    if (n == 0) return result;

    int start = nums[0];

    for (int i = 0; i < n; i++) {
      if (i == n - 1 || nums[i] + 1 != nums[i + 1]) {
        if (start == nums[i]) {
          result.add(start.toString());
        } else {
          result.add("$start->${nums[i]}");
        }
        if (i != n - 1) {
          start = nums[i + 1];
        }
      }
    }
    return result;
  }
}
