class Solution {
  bool isHappy(int n) {
    String number = n.toString();
    int sum = 0;
    Set loop = {};
    for (int i = 0; i < number.length; i++) {
      sum += int.parse(number[i]) * int.parse(number[i]);
    }
    loop.add(sum);

    while (sum != 1) {
      number = sum.toString();
      loop.add(sum);
      sum = 0;
      for (int i = 0; i < number.length; i++) {
        sum += int.parse(number[i]) * int.parse(number[i]);
      }

      if (loop.contains(sum)) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  Solution s = Solution();
  print(s.isHappy(7) ? 't' : 'f');
}
