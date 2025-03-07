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

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var preHead: ListNode? = .init(0, head), fast = preHead, slow = preHead
    for _ in 0...n {
        fast = fast?.next
    }
    while fast != nil {
        fast = fast?.next
        slow = slow?.next
    }
    slow?.next = slow?.next?.next
    return preHead?.next
}

let head = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
print("До удаления:")
printList(head) // 1 → 2 → 3 → 4 → 5 → nil

let newHead = removeNthFromEnd(head, 2)

print("После удаления:")
printList(newHead) // 1 → 2 → 3 → 5 → nil

let head2 = ListNode(1, ListNode(2))
print("До удаления:")
printList(head2) // 1 → 2 → nil

let newHead2 = removeNthFromEnd(head2, 1)

print("После удаления:")
printList(newHead2)  //  1 → nil

let head3 = ListNode(1)
print("До удаления:")
printList(head3)  // 1 → nil

let newHead3 = removeNthFromEnd(head3, 1)

print("После удаления:")
printList(newHead3)  // nil

let head4 = ListNode(1, ListNode(2, ListNode(3)))
print("До удаления:")
printList(head4)  // 1 → 2 → 3 → nil

let newHead4 = removeNthFromEnd(head4, 3)

print("После удаления:")
printList(newHead4)  // 2 → 3 → nil
