class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> wordList = s.split(' ');
    Map<String, String> patternMap = {};

    if (pattern.length != wordList.length) return false;

    for (int i = 0; i < wordList.length; i++) {
      print("pattern ${pattern[i]} :: wordList ${wordList[i]}  ");
      print("${patternMap[pattern[i]]} ?? ${wordList[i]}");
      if (patternMap.containsKey(pattern[i])) {
        if (patternMap[pattern[i]] != wordList[i]) {
          return false;
        }
      } else {
        if (patternMap.containsValue(wordList[i])) {
          return false;
        } else {
          patternMap.addEntries(<String, String>{pattern[i]: wordList[i]}.entries);
        }
      }
      print(patternMap);
    }
    return true;
  }
}

void main() {
  Solution s = Solution();
  print(s.wordPattern('abba', "dog cat cat dog"));
}
