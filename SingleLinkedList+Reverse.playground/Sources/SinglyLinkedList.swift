public class SinglyLinkedList {
    public var head: ListNode?
    
    public init() {}
    
    public func append(_ val: Int) {
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
    
    public func prepend(_ val: Int) {
        let newNode = ListNode(val)
        newNode.next = head
        head = newNode
    }
    
    public func delete(_ val: Int) {
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
    
    public func search(_ val: Int) -> Bool {
        var current = head
        while current != nil {
            if current?.val == val {
                return true
            }
            current = current?.next
        }
        return false
    }
    
    public func reverse() {
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
    
    public func printList() {
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

