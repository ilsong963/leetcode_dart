class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> wordList = s.split(' ');
    Map<String, String> patternMap = {};

    if (pattern.length != wordList.length) return false;

    for (int i = 0; i < wordList.length; i++) {
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
    }
    return true;
  }
}
