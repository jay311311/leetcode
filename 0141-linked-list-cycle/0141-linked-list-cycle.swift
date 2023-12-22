/**
 * Definition for singly-linked list.
 * public class ListNode: Equatable {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil { return false }
        var next1 = head
        var next2 = head?.next
        
        while true {
            if next1 == nil || next2 == nil  { return false }
            if next1 === next2 { return true }
            next2 = next2?.next?.next
            next1 = next1?.next
        }
        return false
    }
}