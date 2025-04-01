// https://habr.com/ru/companies/simbirsoft/articles/673636/

import Foundation

// MARK: Example 7 - All types of dispaching

protocol ProtocolExample7 {
    func doSomethingWithWitnessTable()
}

class ClassExample7: NSObject {
    @objc dynamic func doSomething() {
        print("Example 7 - Message Dispatch")
    }
}

class SubclassExample: ClassExample7, ProtocolExample7 {
    private func doSomethingWithDirectDispatch() {
        print("Example 7 - Direct Dispatch")
    }
    
    func doSomethingWithVirtualTable() {
        print("Example 7 - Virtual Table")
    }
    
    func doSomethingWithWitnessTable() {
        print("Example 7 - Witness Table")
    }
}
