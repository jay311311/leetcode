/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func connect(_ root: Node?) -> Node? {
       guard let root = root else { return nil }
        var queue: [Node] = [root]
        
        while !queue.isEmpty {
            var currentLevel: [Node] = []
            
            for i in 0 ..< queue.count {
                let node = queue[i]
                
                if let left = node.left {
                    currentLevel.append(left)
                }
                
                if let right = node.right {
                    currentLevel.append(right)
                }
            }
            
            queue = currentLevel
            
            if queue.count < 2 {
                continue
            }
            
            for i in 1 ..< queue.count {
                let rightNode = queue[i]
                let leftNode = queue[i - 1]
                leftNode.next = rightNode
            }
        }
        
        return root
    }
}