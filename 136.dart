class Solution {
  int singleNumber(List<int> nums) {
    if (nums.length == 1) return nums[0];

    Set number = Set();

    for (int i = 0; i < nums.length; i++) {
      if (number.contains(nums[i])) {
        number.remove(nums[i]);
      } else {
        number.add(nums[i]);
      }
    }
    return number.first;
  }
}

void main() {
  Solution s = Solution();

  print(s.singleNumber([4, 1, 2, 1, 2]));
}
