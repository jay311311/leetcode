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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil { return nil }

        var count = 1
        var current: ListNode? = head

        while current?.next != nil {
            current = current?.next
            count += 1
        }
        current?.next = head

        for _ in 0..<(count - k % count) {
        current = current?.next
        }
        var newresult = current?.next
        current?.next = nil
        return newresult
    }
}