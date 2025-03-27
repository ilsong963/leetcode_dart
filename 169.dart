class Solution {
  int majorityElement(List<int> nums) {
    int major = 0;
    int answer;

    Map map = Map();

    for (int i = 0; i < nums.length; i++) {
      if (!map.containsKey(nums[i])) {
        map.addAll({nums[i]: 1});
      } else {
        map.update(nums[i], (value) => map[nums[i]] + 1);
      }
    }

    map.forEach((key, value) {
      if (value > major) {
        major = value;
        answer = key;
      }
    });
    return major;
  }
}

void main() {
  Solution s = Solution();
  print(s.majorityElement([2, 2, 1, 1, 1, 2, 2]));
}
