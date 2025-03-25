class Solution {
  bool isPalindrome(String s) {
    String alphabetStr = s.replaceAll(RegExp(r'[^0-9a-zA-Z]'), '');
    alphabetStr = alphabetStr.toLowerCase();

    if (alphabetStr.isEmpty) return true;

    for (int i = 0; i < alphabetStr.length / 2; i++) {
      if (alphabetStr[i] != alphabetStr[alphabetStr.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Solution s = Solution();

  print(s.isPalindrome("A man, a plan, a canal: Panama"));
}
