class Solution {
  void moveZeroes(List<int> nums) {
    int count = 0;
    for (int i = 0; i < nums.length;) {
      if (nums[i] == 0) {
        nums.removeAt(i);
        count++;
      } else {
        i++;
      }
    }
    nums.addAll(List.filled(count, 0));
    print(nums);
  }
}

void main() {
  Solution s = Solution();
  s.moveZeroes([0, 1, 0, 3, 12]);
}
