class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;

    int left = maxDepth(root.left);
    int right = maxDepth(root.right);

    return 1 + (left > right ? left : right);
  }
}

void main() {
  Solution s = Solution();
  print(s.maxDepth(TreeNode(1, TreeNode(2), TreeNode(3))));
}
