class Solution {
  bool isAnagram(String s, String t) {
    List<String> sList = [];
    List<String> tList = [];

    if (s.length != t.length) return false;

    sList = s.split('');
    sList.sort();
    tList = t.split('');
    tList.sort();

    for (int i = 0; i < sList.length; i++) {
      if (sList[i] != tList[i]) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Solution s = Solution();

  print(s.isAnagram("anagram", "nagaram"));
}
