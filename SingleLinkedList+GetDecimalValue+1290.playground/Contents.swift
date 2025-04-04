import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func getDecimalValue(_ head: ListNode?) -> Int {
    var curr = head, digits = [Int](), result = 0, mult = 1
    while curr != nil {
        digits.append(curr!.val)
        curr = curr?.next
    }
    for digit in digits.reversed() {
        result += digit * mult
        mult = mult << 1
    }
    return result
}

let node1 = ListNode(1)
let node2 = ListNode(0)
let node3 = ListNode(1)
let node4 = ListNode(0)

node1.next = node2
node2.next = node3
node3.next = node4

print(getDecimalValue(node1)) // 10
