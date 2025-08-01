class Solution {
  int removeDuplicates(List<int> nums) {
    int result = 0;
    int count = 0;

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        if (count == 0) {
          count++;
        } else {
          nums.removeAt(i + 1);
          i -= 1;
        }
      } else {
        count = 0;
      }
    }
    result = nums.length;
    return result;
  }
}