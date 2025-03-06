import Foundation

public class Node {
    public var val: Int
    public var prev: Node?
    public var next: Node?
    public var child: Node?

    public init(_ val: Int) {
        self.val = val
        self.prev = nil
        self.next = nil
        self.child  = nil
    }
}

func printList(_ head: Node?) {
    var curr = head
    var result = ""
    
    while curr != nil {
        result += "\(curr!.val) → "
        curr = curr?.next
    }
    
    result += "nil"
    print(result)
}

func flatten(_ head: Node?) -> Node? {
    guard let head = head else { return nil }
    var stack = [Node](), curr: Node? = head
    while curr != nil {
        if let child = curr?.child {
            if let next = curr?.next {
                stack.append(next)
            }
            curr?.next = child
            child.prev = curr
            curr?.child = nil
        }
        if curr?.next == nil, !stack.isEmpty {
            curr?.next = stack.removeLast()
            curr?.next?.prev = curr
        }
        curr = curr?.next
    }
    return head
}

// Создаем узлы
let head = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
let node5 = Node(5)
let node6 = Node(6)
let node7 = Node(7)
let node8 = Node(8)
let node9 = Node(9)
let node10 = Node(10)
let node11 = Node(11)
let node12 = Node(12)

// Связываем основной список
head.next = node2
node2.prev = head
node2.next = node3
node3.prev = node2
node3.next = node4
node4.prev = node3
node4.next = node5
node5.prev = node4
node5.next = node6
node6.prev = node5

// Связываем `child`-узлы
node3.child = node7
node7.next = node8
node8.prev = node7
node8.next = node9
node9.prev = node8
node9.next = node10
node10.prev = node9

node8.child = node11
node11.next = node12
node12.prev = node11

// Вывод до flatten()
print("До flatten:")
printList(head) // 1 → 2 → 3 → 4 → 5 → 6 → nil

// Вызываем flatten()
let flatHead = flatten(head)

// Вывод после flatten()
print("После flatten:")
printList(flatHead) // 1 → 2 → 3 → 7 → 8 → 11 → 12 → 9 → 10 → 4 → 5 → 6 → nil

