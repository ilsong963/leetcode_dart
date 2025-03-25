class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0;

    int min = prices[0];

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
  print(
    s.maxProfit([
      138,
      199,
      111,
      308,
      126,
      489,
      667,
      957,
      278,
      848,
      629,
      570,
      368,
      320,
      413,
      213,
      835,
      996,
      225,
      838,
      826,
      290,
      970,
      480,
      64,
      274,
      756,
      763,
      928,
      844,
      32,
      172,
      828,
      270,
      763,
      607,
      907,
      677,
      544,
      195,
      699,
      589,
      677,
      577,
      847,
      993,
      290,
      993,
      495,
      846,
      887,
      763,
      627,
      287,
      534,
      92,
      965,
      172,
      423,
    ]),
  );
}
