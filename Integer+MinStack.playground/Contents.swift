import Foundation

class MinStack {
    private var stack: [Int]
    private var minStack: [Int]
    
    init() {
        stack = .init()
        minStack = .init()
    }
    
    func push(_ val: Int) {
        stack.append(val)
        if minStack.isEmpty || val <= getMin() {
            minStack.append(val)
        }
    }
    
    func pop() {
        if stack.popLast() == getMin() {
            minStack.popLast()
        }
    }
    
    func top() -> Int {
        stack.last!
    }
    
    func getMin() -> Int {
        minStack.last!
    }
}

let stack = MinStack()
stack.push(-2)
stack.push(0)
stack.push(-3)
print(stack.getMin()) // ➝ -3
stack.pop()
print(stack.top())    // ➝ 0
print(stack.getMin()) // ➝ -2

