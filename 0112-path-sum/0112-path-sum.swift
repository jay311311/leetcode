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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        // leaf is a node without child  == dfs(stack)
        //  preorder
        guard let root = root else {return false}
        var vistedStack:[TreeNode] = []
        var needVisitStack:[(TreeNode, Int)] = [(root, targetSum)]
        // var sum = targetSum
        // let rightNode = root.right ?? nil

        while !needVisitStack.isEmpty {
            var currentlevel:[(TreeNode, Int)] = []
            let vistedNode = needVisitStack.removeLast() 
            var sum  = vistedNode.1 - vistedNode.0.val
            // vistedStack.append(vistedNode)

           if let rightNode = vistedNode.0.right { currentlevel.append((rightNode, sum))}
            if let leftNode = vistedNode.0.left { currentlevel.append((leftNode, sum)) }
            for currentNode in currentlevel{ needVisitStack.append(currentNode) }

            if vistedNode.0.left == nil  && vistedNode.0.right == nil {
               if sum != 0 {
                    continue
                } else {
                    return true
                }
            } else {
                sum = sum + vistedNode.0.val
            }
        }
        return false
    }
}