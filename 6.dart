class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1) return s;

    List<StringBuffer> rows = List.generate(numRows, (index) => StringBuffer());
    int currentRow = 0;
    bool isGoingDown = false;

    for (var char in s.split('')) {
      rows[currentRow].write(char);
      if (currentRow == 0 || currentRow == numRows - 1) {
        isGoingDown = !isGoingDown;
      }
      currentRow += isGoingDown ? 1 : -1;
    }

    return rows.join('');
  }
}

void main() {
  Solution s = Solution();
  print(s.convert("PAYPALISHIRING", 3));
}
