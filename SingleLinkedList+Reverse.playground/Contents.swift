import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var curr = head
    var next: ListNode? = nil
    
    while curr != nil {
        next = curr?.next
        curr?.next = prev
        prev = curr
        curr = next
    }
    return prev
}

func reverseListRecursive(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil { return head }
    let newHead = reverseListRecursive(head?.next)
    head?.next?.next = head
    head?.next = nil
    return newHead
}

let list = SinglyLinkedList()
list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)

list.printList()

list.head = reverseList(list.head)

list.printList()

list.head = reverseListRecursive(list.head)

list.printList()
