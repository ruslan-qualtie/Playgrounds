import Foundation

// MARK: Example 1 - Final Class

final class ClassEample1 {
    func doSomething() {
        print("Example 1 - Final class")
    }
}

let classEample1 = ClassEample1()
classEample1.doSomething()

// MARK: Example 2 - Protocol Extension

protocol ProtocolExample1 {
    func doSomething()
}

extension ProtocolExample1 {
    func doSomething() {
        print("Example 2 - Protocol extension")
    }
}

class ClassEample2: ProtocolExample1 {}

let classEample2 = ClassEample2()
classEample2.doSomething()

// MARK: Example 3 - Class Extension

class ClassEample3 {}

extension ClassEample3 {
    func doSomething() {
        print("Example 3 - Class Extension")
    }
}

let classEample3 = ClassEample3()
classEample3.doSomething()

// MARK: Example 4 - Access Control

class ClassEample4 {
    func doSomething() {
        doSomethingPrivate()
    }
    
    private func doSomethingPrivate() {
        print("Example 4 - Access Control")
    }
}

let classEample4 = ClassEample4()
classEample4.doSomething()
