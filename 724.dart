class Solution {
  int pivotIndex(List<int> nums) {
    int total = 0;
    int sum = 0;

    for (int num in nums) {
      total += num;
    }

    for (int i = 0; i < nums.length; i++) {
      total -= nums[i];

      if (sum == total) {
        return i;
      }
      sum += nums[i];
    }
    return -1;
  }
}

void main() {
  Solution s = Solution();

  print(s.pivotIndex([1, 7, 3, 6, 5, 6]));
}
