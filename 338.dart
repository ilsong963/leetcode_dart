class Solution {
  List<int> countBits(int n) {
    List<int> numList = [];

    for (int i = 0; i <= n; i++) {
      int count = 0;
      int num = i;

      while (num > 0) {
        if (num % 2 == 1) {
          count++;
        }
        num = num ~/ 2;
      }
      numList.add(count);
    }

    return numList;
  }
}

void main() {
  Solution s = Solution();

  print(s.countBits(5));
}
