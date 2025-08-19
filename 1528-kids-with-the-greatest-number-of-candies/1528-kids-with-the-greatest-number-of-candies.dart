class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> many = [];

    int maxValue = candies.reduce((a, b) => a > b ? a : b);

    for (int i = 0; i < candies.length; i++) {
      many.add(candies[i] + extraCandies >= maxValue);
    }
    return many;
  }
}