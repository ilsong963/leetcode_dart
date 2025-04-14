class Solution {
  String reverseVowels(String s) {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    String low = s.toLowerCase();
    List<int> indexList = [];
    List<String> alphabetList = [];

    for (int i = 0; i < low.length; i++) {
      if (vowels.contains(low[i])) {
        indexList.add(i);
        alphabetList.add(s[i]);
      }
    }

    for (int i = 0; i < indexList.length; i++) {
      s = s.replaceRange(indexList[i], indexList[i] + 1, alphabetList[indexList.length - i - 1]);
    }
    return s;
  }
}

void main() {
  Solution s = Solution();
  print(s.reverseVowels("IceCreaAm"));
}
