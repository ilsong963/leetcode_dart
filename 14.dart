class Solution {
  String longestCommonPrefix(List<String> strs) {
    String value = strs[0];

    if (strs.length == 1) {
      return value;
    }

    for (int i = 1; i < strs.length;) {
      if (value.length == 0) return value;

      if (strs[i].startsWith(value)) {
        i++;
      } else {
        value = value.replaceRange(value.length - 1, null, "");
      }
    }

    return value;
  }
}

void main() {
  Solution s = Solution();
  print(s.longestCommonPrefix(["flower", "flow", "flight"]));
}
