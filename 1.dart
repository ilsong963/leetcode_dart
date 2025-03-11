class Solution {
  List<int> answer = [];
  int count = 0;
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          answer = [i, j];
          break;
        }
      }
    }
    return answer;
  }
}

void main() {
  Solution s = Solution();
  print(s.twoSum([3, 2, 4, 5, 6, 7, 8], 6));
}
