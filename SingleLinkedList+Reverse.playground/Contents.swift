import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

class SinglyLinkedList {
    var head: ListNode?
    
    func append(_ val: Int) {
        let newNode = ListNode(val)
        if head == nil {
            head = newNode
            return
        }
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = newNode
    }
    
    func prepend(_ val: Int) {
        let newNode = ListNode(val)
        newNode.next = head
        head = newNode
    }
    
    func delete(_ val: Int) {
        guard head != nil else { return }
        
        if head?.val == val {
            head = head?.next
            return
        }
        
        var current = head
        while current?.next != nil {
            if current?.next?.val == val {
                current?.next = current?.next?.next
                return
            }
            current = current?.next
        }
    }
    
    func search(_ val: Int) -> Bool {
        var current = head
        while current != nil {
            if current?.val == val {
                return true
            }
            current = current?.next
        }
        return false
    }
    
    func reverse() {
        var prev: ListNode? = nil
        var current = head
        
        while current != nil {
            let nextNode = current?.next
            current?.next = prev
            prev = current
            current = nextNode
        }
        head = prev
    }
    
    func printList() {
        var current = head
        var result = ""
        while current != nil {
            result += "\(current!.val) → "
            current = current?.next
        }
        result += "nil"
        print(result)
    }
}

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

let list = SinglyLinkedList()
list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)

list.printList()

list.head = reverseList(list.head)

list.printList()
