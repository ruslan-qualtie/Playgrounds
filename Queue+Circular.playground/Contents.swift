import Foundation

class MyCircularQueue {
    private var queue: [Int]
    private var front: Int
    private var rear: Int
    private var size: Int
    private let capacity: Int

    init(_ k: Int) {
        queue = Array(repeating: -1, count: k)
        front = -1
        rear = -1
        size = 0
        capacity = k
    }
    
    func enQueue(_ value: Int) -> Bool {
        if isFull() { return false }
        if isEmpty() { front = 0 }
        rear = (rear + 1) % capacity
        queue[rear] = value
        size += 1
        return true
    }
    
    func deQueue() -> Bool {
        if isEmpty() { return false }
        if front == rear {
            front = -1
            rear = -1
        } else {
            front = (front + 1) % capacity
        }
        size -= 1
        return true
    }
    
    func Front() -> Int {
        isEmpty() ? -1 : queue[front]
    }
    
    func Rear() -> Int {
        isEmpty() ? -1 : queue[rear]
    }
    
    func isEmpty() -> Bool {
        size == 0
    }
    
    func isFull() -> Bool {
        size == capacity
    }
}

let queue = MyCircularQueue(3)
print(queue.enQueue(1)) // true
print(queue.enQueue(2)) // true
print(queue.enQueue(3)) // true
print(queue.enQueue(4)) // false
print(queue.Rear()) // 3
print(queue.isFull()) // true
print(queue.deQueue()) // true
print(queue.enQueue(4)) // true
print(queue.Rear()) // 4
