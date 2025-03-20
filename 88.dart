class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.replaceRange(3, nums1.length, nums2);

    nums1.sort();

    print(nums1);
  }
}

void main() {
  Solution s = Solution();
  s.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}
