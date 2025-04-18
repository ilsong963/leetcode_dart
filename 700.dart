class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null) {
      return null;
    }

    if (root.val == val) {
      return root;
    } else {
      if (root.val > val) {
        return searchBST(root.left, val);
      } else {
        return searchBST(root.right, val);
      }
    }
  }
}

void main() {
  Solution s = Solution();

  TreeNode node1 = TreeNode(1);
  TreeNode node3 = TreeNode(3);
  TreeNode node2 = TreeNode(2, node1, node3);
  TreeNode node7 = TreeNode(7);
  TreeNode root = TreeNode(4, node2, node7);

  print(s.searchBST(root, 2));
}
