class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> ransomNoteMap = convertToMap(ransomNote);
    Map<String, int> magazineMap = convertToMap(magazine);
    bool answer = true;

    ransomNoteMap.forEach((k, v) {
      if (!magazineMap.containsKey(k)) {
        answer = false;
      } else {
        if (v > magazineMap[k]!) {
          answer = false;
        }
      }
    });
    return answer;
  }

  Map<String, int> convertToMap(String str) {
    Map<String, int> map = {};
    for (int i = 0; i < str.length; i++) {
      if (map.containsKey(str[i])) {
        map.update(str[i], (value) => map[str[i]]! + 1);
      } else {
        map.addEntries({str[i]: 1}.entries);
      }
    }
    return map;
  }
}

void main() {
  Solution s = Solution();
  print(s.canConstruct("aa", "ab"));
}
