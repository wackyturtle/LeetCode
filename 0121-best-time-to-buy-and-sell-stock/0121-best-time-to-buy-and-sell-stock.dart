class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = double.maxFinite.toInt();
    int maxProfit = 0;

    for (int price in prices) {
      if (price < minPrice) {
        minPrice = price;
      } else {
        maxProfit = max(maxProfit, price - minPrice);
      }
    }

    return maxProfit;
  }
}