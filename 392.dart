class Solution {
  bool isSubsequence(String s, String t) {
    int sIndex = 0;
    int tIndex = 0;

    // 문자열 t를 탐색하며 s의 모든 문자가 순서대로 있는지 확인
    while (sIndex < s.length && tIndex < t.length) {
      if (s[sIndex] == t[tIndex]) {
        sIndex++;
      }
      tIndex++;
    }

    // s의 모든 문자를 찾은 경우 true
    return sIndex == s.length;
  }
}

void main() {
  Solution s = Solution();
  print(s.isSubsequence("bb", "ahbgdc"));
}
