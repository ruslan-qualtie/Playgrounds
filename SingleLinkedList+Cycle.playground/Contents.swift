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

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head, fast = head
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            return true
        }
    }
    return false
}

// Пример 1: Цикл есть
let head1 = ListNode(3)
head1.next = ListNode(2)
head1.next?.next = ListNode(0)
head1.next?.next?.next = ListNode(-4)
head1.next?.next?.next?.next = head1.next // Создаем цикл

print(hasCycle(head1)) // Ожидаемый результат: true ✅

// Пример 2: Нет цикла
let head2 = ListNode(1)
head2.next = ListNode(2)

print(hasCycle(head2)) // Ожидаемый результат: false ✅

// Пример 3: Один узел, нет цикла
let head3 = ListNode(1)

print(hasCycle(head3)) // Ожидаемый результат: false ✅

// Пример 4: Пустой список
print(hasCycle(nil)) // Ожидаемый результат: false ✅
