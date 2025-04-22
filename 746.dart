class Solution {
  int minCostClimbingStairs(List<int> cost) {
    int n = cost.length;
    if (n == 2) return cost.reduce((a, b) => a < b ? a : b); // 계단이 2개인 경우 최소값 반환

    List<int> dp = List<int>.filled(n, 0);
    dp[0] = cost[0];
    dp[1] = cost[1];

    for (int i = 2; i < n; i++) {
      dp[i] = cost[i] + (dp[i - 1] < dp[i - 2] ? dp[i - 1] : dp[i - 2]);
    }

    return dp[n - 1] < dp[n - 2] ? dp[n - 1] : dp[n - 2];
  }
}

void main() {
  Solution s = Solution();
  print(s.minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]));
}
