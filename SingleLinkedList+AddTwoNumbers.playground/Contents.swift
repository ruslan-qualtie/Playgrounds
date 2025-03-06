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

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1 = l1, l2 = l2, preHead: ListNode? = .init(0), prev = preHead, carry = 0
    while l1 != nil || l2 != nil || carry > 0 {
        let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
        prev?.next = .init(sum % 10)
        carry = sum / 10
        l1 = l1?.next
        l2 = l2?.next
        prev = prev?.next
    }
    return preHead?.next
}

// Пример 1: 342 + 465 = 807 (в обратном порядке: 7 → 0 → 8)
let l1 = ListNode(2)
l1.next = ListNode(4)
l1.next?.next = ListNode(3)

let l2 = ListNode(5)
l2.next = ListNode(6)
l2.next?.next = ListNode(4)

printList(addTwoNumbers(l1, l2)) // Ожидаемый результат: 7 → 0 → 8 ✅

// Пример 2: 9999 + 1 = 10000 (в обратном порядке: 0 → 0 → 0 → 0 → 1)
let l3 = ListNode(9)
l3.next = ListNode(9)
l3.next?.next = ListNode(9)
l3.next?.next?.next = ListNode(9)

let l4 = ListNode(1)

printList(addTwoNumbers(l3, l4)) // Ожидаемый результат: 0 → 0 → 0 → 0 → 1 ✅

