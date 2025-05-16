// 590. N-ary Tree Postorder Traversal
// https://leetcode.com/problems/n-ary-tree-postorder-traversal/

import Foundation

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

func postorder(_ root: Node?) -> [Int] {
    guard let root = root else { return [] }
    var result = [Int]()
    for child in root.children {
        result += postorder(child)
    }
    return result + [root.val]
}

let root = Node(1)
root.children = [Node(3), Node(2), Node(4)]
root.children[0].children = [Node(5), Node(6)]

print(postorder(root)) // [5, 6, 3, 2, 4, 1]
