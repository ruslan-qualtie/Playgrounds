import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func printList(_ head: ListNode?) {
    var curr = head
    var result = ""
    
    while curr != nil {
        result += "\(curr!.val) → "
        curr = curr?.next
    }
    
    result += "nil"
    print(result)
}

func isPalindrome(_ head: ListNode?) -> Bool {
    if head == nil { return false }
    var values = [Int](), curr = head
    while curr != nil {
        values.append(curr!.val)
        curr = curr?.next
    }
    return values == values.reversed()
}

let head1 = ListNode(1)
head1.next = ListNode(2)
head1.next?.next = ListNode(1)

let head2 = ListNode(1)
head2.next = ListNode(2)
head2.next?.next = ListNode(2)
head2.next?.next?.next = ListNode(1)

let head3 = ListNode(1)
head3.next = ListNode(2)
head3.next?.next = ListNode(3)
head3.next?.next?.next = ListNode(1)

print(isPalindrome(head1)) // true
print(isPalindrome(head2)) // true
print(isPalindrome(head3)) // false
