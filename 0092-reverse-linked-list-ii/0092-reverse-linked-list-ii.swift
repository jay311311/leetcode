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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        var dummy: ListNode? = ListNode(0)
        dummy?.next = head

        var oldPrev:ListNode? = dummy
        for _ in 1..<left{
            oldPrev = oldPrev?.next
        }
    var current:ListNode? = oldPrev?.next
    var prev:ListNode? = nil
       var next:ListNode? = nil

       for _ in left...right {
           next = current?.next
           current?.next = prev
           prev = current
           current = next
       }
        oldPrev?.next?.next = current
         oldPrev?.next = prev
       
       return dummy?.next
    }
       

}