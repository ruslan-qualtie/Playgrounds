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

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var preHead: ListNode? = .init(0), prev = preHead, l1 = list1, l2 = list2
    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            prev?.next = l1
            l1 = l1?.next
        } else {
            prev?.next = l2
            l2 = l2?.next
        }
        prev = prev?.next
    }
    prev?.next = l1 ?? l2
    return preHead?.next
}

func mergeTwoLists2(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard let l1 = list1, let l2 = list2 else { return list1 ?? list2 }
    if l1.val <= l2.val {
        l1.next = mergeTwoLists2(l1.next, l2)
        return l1
    } else {
        l2.next = mergeTwoLists2(l1, l2.next)
        return l2
    }
}

let list1 = ListNode(1)
list1.next = ListNode(2)
list1.next?.next = ListNode(4)

let list2 = ListNode(1)
list2.next = ListNode(3)
list2.next?.next = ListNode(4)

printList(mergeTwoLists(list1, list2)) // 1 → 1 → 2 → 3 → 4 → 4 → nil
