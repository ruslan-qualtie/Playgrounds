import Foundation

// MARK: Example 6 - Witness Table

protocol Example6Protocol {
    func doSomething()
}

class ClassExample6: Example6Protocol {
    func doSomething() {
        print("Example 6 - Witness Table")
    }
}

class AnotherClassExample6: Example6Protocol {
    func doSomething() {
        print("Another Class Example 6 - Witness Table")
    }
}

let classExample6 = ClassExample6()
classExample6.doSomething()

let anotherClassExample6 = AnotherClassExample6()
anotherClassExample6.doSomething()
