class Solution {
  Map<String, int> map = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000};

  int value = 0;
  int romanToInt(String s) {
    for (var i = 0; i < s.length; i++) {
      int currentValue = map[s[i]]!;
      int nextValue = i + 1 < s.length ? map[s[i + 1]]! : 0;

      if (currentValue < nextValue) {
        value -= currentValue;
      } else {
        value += currentValue;
      }
    }
    return value;
  }
}

void main() {
  Solution s = Solution();
  print(s.romanToInt("III"));
}
