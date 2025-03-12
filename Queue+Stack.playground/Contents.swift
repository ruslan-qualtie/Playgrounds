import Foundation

class MyQueue {
    var inStack: [Int]
    var outStack: [Int]

    init() {
        inStack = .init()
        outStack = .init()
    }
    
    func push(_ x: Int) {
        inStack.append(x)
    }
    
    func pop() -> Int {
        if outStack.isEmpty {
            while !inStack.isEmpty {
                outStack.append(inStack.removeLast())
            }
        }
        return outStack.removeLast()
    }
    
    func peek() -> Int {
        if outStack.isEmpty {
            while !inStack.isEmpty {
                outStack.append(inStack.removeLast())
            }
        }
        return outStack.last!
    }
    
    func empty() -> Bool {
        inStack.isEmpty && outStack.isEmpty
    }
}

let queue = MyQueue()

queue.push(1)
queue.push(2)

print(queue.peek())  // 1
print(queue.pop())  // 1
print(queue.empty())  // false
