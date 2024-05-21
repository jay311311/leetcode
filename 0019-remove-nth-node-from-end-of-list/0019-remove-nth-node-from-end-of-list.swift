/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if head == nil { return nil }

        var dummy = ListNode(0)
        dummy.next = head
        var temp: ListNode?  = dummy
        var current: ListNode?  = dummy
 
        for step in 0...n {
            current = current?.next
        }

        while current != nil {
            temp = temp?.next
            current = current?.next
        }
        temp?.next = temp?.next?.next
        return dummy.next
    }

}