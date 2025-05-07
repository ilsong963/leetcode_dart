class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> set1 = {...(nums1 + nums2)};
    Set<int> set2 = {...(nums1 + nums2)};

    getRemovedList(set1, nums2);
    return [getRemovedList(set1, nums2), getRemovedList(set2, nums1)];
  }

  List<int> getRemovedList(Set<int> set, List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      set.remove(nums[i]);
    }
    return set.toList();
  }
}

void main() {
  Solution s = Solution();
  print(s.findDifference([1, 2, 3], [2, 4, 6]));
}
