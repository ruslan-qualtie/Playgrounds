import Foundation

class MyStack {
    var queue: [Int]

    init() {
        queue = .init()
    }
    
    func push(_ x: Int) {
        queue.append(x)
        for _ in 0..<queue.count - 1 {
            queue.append(queue.removeFirst())
        }
    }
    
    func pop() -> Int {
        queue.removeFirst()
    }
    
    func top() -> Int {
        queue.first!
    }
    
    func empty() -> Bool {
        queue.isEmpty
    }
}

let stack = MyStack()
stack.push(1)
stack.push(2)
print(stack.top()) // 2
print(stack.pop()) // 2
print(stack.empty()) // false
