class Solution {
  int lengthOfLastWord(String s) {
    List<String> words = [];

    words = s.split(" ");
    words.removeWhere((word) => word.length == 0);
    return words.last.length;
  }
}

void main() {
  Solution s = Solution();
  print(s.lengthOfLastWord("   fly me   to   the moon  "));
}
