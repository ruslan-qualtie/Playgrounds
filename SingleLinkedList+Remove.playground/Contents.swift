import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
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

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    var preHead: ListNode? = ListNode(0, head), prev = preHead, curr = head
    while curr != nil {
        if curr?.val == val {
            prev?.next = curr?.next
        } else {
            prev = curr
        }
        curr = curr?.next
    }
    return preHead?.next
}

func removeElements2(_ head: ListNode?, _ val: Int) -> ListNode? {
    if head == nil { return head }
    head?.next = removeElements(head?.next, val)
    return head?.val == val ? head?.next : head
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(6)
head.next?.next?.next = ListNode(3)
head.next?.next?.next?.next = ListNode(4)
head.next?.next?.next?.next?.next = ListNode(5)
head.next?.next?.next?.next?.next?.next = ListNode(6)

printList(head)

let newHead = removeElements(head, 6)

printList(newHead)

let newHead2 = removeElements2(head, 4)

printList(newHead2)
