class Solution {
  int removeDuplicates(List<int> nums) {
    int k = 1;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[k - 1]) {
        nums[k] = nums[i];
        k++;
      }
    }
    return k;
  }
}

void main() {
  Solution s = Solution();
  print(s.removeDuplicates([1, 1, 2]));
}
