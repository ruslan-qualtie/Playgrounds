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

func detectCycle(_ head: ListNode?) -> ListNode? {
    var slow = head, fast = head
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        if slow === fast {
            fast = head
            while fast !== slow {
                slow = slow?.next
                fast = fast?.next
            }
            return slow
        }
    }
    return nil
}

// Пример 1: Цикл есть (возвращаем узел 2)
let head1 = ListNode(3)
head1.next = ListNode(2)
head1.next?.next = ListNode(0)
head1.next?.next?.next = ListNode(-4)
head1.next?.next?.next?.next = head1.next // Создаем цикл

print(detectCycle(head1)?.val) // Ожидаемый результат: 2 ✅

// Пример 2: Нет цикла (возвращаем nil)
let head2 = ListNode(1)
head2.next = ListNode(2)

print(detectCycle(head2)?.val) // Ожидаемый результат: nil ✅

// Пример 3: Один узел, нет цикла
let head3 = ListNode(1)

print(detectCycle(head3)?.val) // Ожидаемый результат: nil ✅

// Пример 4: Пустой список
print(detectCycle(nil)?.val) // Ожидаемый результат: nil ✅
