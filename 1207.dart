class Solution {
  bool uniqueOccurrences(List<int> arr) {
    // 각 원소의 빈도수를 저장하는 Map
    Map<int, int> frequencyMap = {};

    // 빈도수 계산
    for (int num in arr) {
      frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
    }

    // 빈도 리스트 생성
    List<int> frequencies = frequencyMap.values.toList();

    // 빈도의 고유성 검사
    return frequencies.length == frequencies.toSet().length;
  }
}

void main() {
  Solution s = Solution();
  print(s.uniqueOccurrences([1, 2, 2, 1, 1, 3]));
}
