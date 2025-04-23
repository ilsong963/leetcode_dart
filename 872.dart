class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> getLeafSequence(TreeNode? root) {
    List<int> leaves = [];

    void dfs(TreeNode? node) {
      if (node == null) return;
      if (node.left == null && node.right == null) {
        leaves.add(node.val);
      }
      dfs(node.left);
      dfs(node.right);
    }

    dfs(root);
    return leaves;
  }

  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> leaves1 = getLeafSequence(root1);
    List<int> leaves2 = getLeafSequence(root2);

    // 두 리스트의 길이가 동일하고, 모든 요소가 같은 순서로 일치하는지 확인
    if (leaves1.length != leaves2.length) {
      return false;
    }

    for (int i = 0; i < leaves1.length; i++) {
      if (leaves1[i] != leaves2[i]) {
        return false;
      }
    }

    return true;
  }
}

void main() {
  Solution s = Solution();
  // print(s.leafSimilar(root1, root2))
}
