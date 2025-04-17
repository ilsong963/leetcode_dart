class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int hap = 0;
    int max = 0;

    if (nums.length == k) {
      for (int i in nums) {
        hap += i;
      }
      return hap / k;
    }

    for (int i = 0; i < k; i++) {
      hap += nums[i];
      max = hap;
    }

    for (int i = 0; i < nums.length - k; i++) {
      if (max < hap - nums[i] + nums[k + i]) {
        max = hap - nums[i] + nums[k + i];
      }

      hap = hap - nums[i] + nums[k + i];
    }
    return max / k;
  }
}

void main() {
  Solution s = Solution();
  print(s.findMaxAverage([0, 4, 0, 3, 2], 1));
}
