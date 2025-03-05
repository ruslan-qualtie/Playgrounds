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

func middleNode(_ head: ListNode?) -> ListNode? {
    var slow = head, fast = head
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    return slow
}

// Пример 1: 1 → 2 → 3 → 4 → 5
let head1 = ListNode(1)
head1.next = ListNode(2)
head1.next?.next = ListNode(3)
head1.next?.next?.next = ListNode(4)
head1.next?.next?.next?.next = ListNode(5)

printList(middleNode(head1)) // Ожидаемый результат: 3 → 4 → 5 → nil ✅

// Пример 2: 1 → 2 → 3 → 4 → 5 → 6
let head2 = ListNode(1)
head2.next = ListNode(2)
head2.next?.next = ListNode(3)
head2.next?.next?.next = ListNode(4)
head2.next?.next?.next?.next = ListNode(5)
head2.next?.next?.next?.next?.next = ListNode(6)

printList(middleNode(head2)) // Ожидаемый результат: 4 → 5 → 6 → nil ✅

// Пример 3: 1 узел
let head3 = ListNode(1)
printList(middleNode(head3)) // Ожидаемый результат: 1 → nil ✅

// Пример 4: Пустой список
printList(middleNode(nil)) // Ожидаемый результат: nil ✅
