import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    var prev: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
        self.prev = nil
    }
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

func reverseDoublyLinkedList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil, curr = head, next: ListNode? = nil
    
    while curr != nil {
        prev = curr
        next = curr?.next
        curr?.next = curr?.prev
        curr?.prev = next
        curr = next
    }
    return prev
}

let head = ListNode(1)
let node2 = ListNode(2)
let node3 = ListNode(3)
let node4 = ListNode(4)
let node5 = ListNode(5)

head.next = node2
node2.prev = head
node2.next = node3
node3.prev = node2
node3.next = node4
node4.prev = node3
node4.next = node5
node5.prev = node4

printList(head) // 1 → 2 → 3 → 4 → 5 → nil

var newHead = reverseDoublyLinkedList(head)

printList(newHead) // 5 → 4 → 3 → 2 → 1 → nil
