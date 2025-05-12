import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;

    int maxArea = 0;

    while (left < right) {
      int currentHeight = min(height[left], height[right]);
      int currentArea = currentHeight * (right - left);
      maxArea = max(maxArea, currentArea);

      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return maxArea;
  }
}

void main() {
  Solution s = Solution();
  print(s.maxArea([4, 3, 2, 1, 4]));
}
