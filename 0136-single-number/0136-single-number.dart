class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (int i = 0; i < nums.length; i++){
        result ^= nums[i];
    }
    return result;
    }
}