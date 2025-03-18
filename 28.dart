class Solution {
  int strStr(String haystack, String needle) {
    int index = -1;

    // haystack이 needle보다 짧을경우
    if (haystack.length < needle.length) {
      return index;
    }

    for (int i = 0; i < haystack.length; i++) {
      // haystack의 남은 길이보다 needle이 길 경우
      if (haystack.length - i < needle.length) {
        return index;
      }

      // needle의 첫 글자 탐색
      if (haystack[i] == needle[0]) {
        index = i;

        // needle의 다음글자 탐색
        for (int j = 0; j < needle.length; j++) {
          if (haystack[j + i] != needle[j]) {
            index = -1;
          }
        }

        // 찾은 경우
        if (index != -1) {
          return index;
        }
      }
    }
    return index;
  }
}

void main() {
  Solution s = Solution();

  print(s.strStr('mississippi', 'issi'));
}
