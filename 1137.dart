class Solution {
  int tribonacci(int n) {
    int answer = 0;
    List triboList = [0, 1, 1];

    for (int i = 0; i < n - 2; i++) {
      answer = sum(triboList);
      triboList.add(answer);
      triboList.removeAt(0);
    }
    return answer;
  }

  int sum(List list) {
    int temp = 0;
    for (int item in list) {
      temp += item;
    }
    return temp;
  }
}

void main() {
  Solution s = Solution();
  print(s.tribonacci(4));
}
