class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((elements) => elements == val);
    return nums.length;
  }
}

void main() {
  Solution s = Solution();
  print(s.removeElement([2, 2, 3], 2));
}
