import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func createList(_ values: [Int]) -> ListNode? {
    let preHead = ListNode(0)
    var current = preHead
    for value in values {
        current.next = ListNode(value)
        current = current.next!
    }
    return preHead.next
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

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var a = headA, b = headB
    while a !== b {
        a = (a == nil) ? headB : a?.next
        b = (b == nil) ? headA : b?.next
    }
    return a
}

let common = createList([8, 4, 5])  // Общая часть списков
let headA = createList([4, 1])
let headB = createList([5, 6, 1])

// Соединяем списки в пересечении
var temp = headA
while temp?.next != nil { temp = temp?.next }
temp?.next = common

temp = headB
while temp?.next != nil { temp = temp?.next }
temp?.next = common

print("Список A:")
printList(headA)
print("Список B:")
printList(headB)

let result = getIntersectionNode(headA, headB)

print("Пересечение в узле:")
print(result?.val ?? "nil")
