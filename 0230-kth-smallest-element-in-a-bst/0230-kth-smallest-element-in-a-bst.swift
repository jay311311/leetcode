/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var values:[Int] = []
        recursive(root, &values)
        values = values.sorted()
        return values[k-1] ?? 0
    }

    func recursive(_ root: TreeNode?,_ values: inout[Int] ){
        guard let root = root else { return }

        values.append(root.val)
        recursive(root.left, &values)
        recursive(root.right, &values)
    }
}