class Solution {
  int largestAltitude(List<int> gain) {
    List<int> altitudes = [0];
    int highest = 0;

    for (int i = 0; i < gain.length; i++) {
      altitudes.add(altitudes[i] + gain[i]);
      if (highest < altitudes[i + 1]) {
        highest = altitudes[i + 1];
      }
    }
    return highest;
  }
}

void main() {
  Solution s = Solution();
  print(s.largestAltitude([-5, 1, 5, 0, -7]));
}
