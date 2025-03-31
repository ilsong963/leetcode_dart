class Solution {
  bool isIsomorphic(String s, String t) {
    List<int> convertS = convertToInt(s);
    List<int> convertT = convertToInt(t);

    for (int i = 0; i < convertS.length; i++) {
      if (convertS[i] != convertT[i]) {
        return false;
      }
    }

    return true;
  }

  List<int> convertToInt(String str) {
    Map<String, int> char = {};

    List<int> nums = [];
    int count = 0;
    for (int i = 0; i < str.length; i++) {
      if (!char.containsKey(str[i])) {
        final add = <String, int>{str[i]: count};
        char.addEntries(add.entries);
        count++;
      }
    }
    for (int i = 0; i < str.length; i++) {
      nums.add(char[str[i]]!);
    }
    return nums;
  }
}

void main() {
  Solution s = Solution();
  print(s.isIsomorphic("egg", "add"));
}
