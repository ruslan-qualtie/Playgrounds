import Foundation

// MARK: Example 5 - Virtual Table

class ClassExample5 {
    func doSomething() {
        print("Example 5 - Virtual Table")
    }
}

class SubclassExample5: ClassExample5 {
    override func doSomething() {
        print("Override For Subclass")
    }
    
    func doSomethingElse() {
        print("Method In Subclass")
    }
}

let classExample5 = ClassExample5()
classExample5.doSomething()

let subclassExample5 = SubclassExample5()
subclassExample5.doSomething()
subclassExample5.doSomethingElse()

