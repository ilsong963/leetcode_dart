class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    // 해시맵 생성 (숫자 -> 가장 최근 인덱스)
    Map<int, int> indexMap = {};

    // 배열 순회
    for (int i = 0; i < nums.length; i++) {
      // 만약 숫자가 해시맵에 존재하고 인덱스 차이가 k 이하라면 true 반환
      if (indexMap.containsKey(nums[i]) && (i - indexMap[nums[i]]!) <= k) {
        return true;
      }
      // 현재 숫자와 인덱스를 해시맵에 업데이트
      indexMap[nums[i]] = i;
    }

    // 조건을 만족하는 경우가 없으면 false 반환
    return false;
  }
}

void main() {
  Solution s = Solution();
  print(s.containsNearbyDuplicate([1, 2, 3, 1], 3));
}
