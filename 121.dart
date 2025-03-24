class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0;

    int min = prices[0];

    // for (int i = 0; i < prices.length; i++) {
    //   for (int j = i; j < prices.length; j++) {
    //     if (prices[j] - prices[i] > profit) {
    //       profit = prices[j] - prices[i];
    //     }
    //   }
    // }

    for (int i = 0; i < prices.length; i++) {
      if (prices[i] < min) {
        min = prices[i];
      }
      if (prices[i] - min > profit) {
        profit = prices[i] - min;
      }
    }
    return profit;
  }
}

void main() {
  Solution s = Solution();
  print(s.maxProfit([7, 1, 5, 3, 6, 4]));
}
