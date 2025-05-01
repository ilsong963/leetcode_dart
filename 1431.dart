class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int max = 0;
    for (int value in candies) {
      if (value > max) {
        max = value;
      }
    }

    return candies.map((candy) {
      if (candy + extraCandies >= max) {
        return true;
      }
      return false;
    }).toList();
  }
}

void main() {
  Solution s = Solution();
  print(s.kidsWithCandies([2, 3, 5, 1, 3], 3));
}
