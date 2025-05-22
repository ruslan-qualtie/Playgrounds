// 559. Maximum Depth of N-ary Tree
// https://leetcode.com/problems/maximum-depth-of-n-ary-tree/

import Foundation

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

func maxDepth(_ root: Node?) -> Int {
    guard let root = root else { return 0 }
    var result = 0
    for child in root.children {
        result = max(maxDepth(child), result)
    }
    return result + 1
}

let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)
let node5 = Node(5)
let node6 = Node(6)

node1.children = [node2, node3, node4]
node3.children = [node5, node6]

print(maxDepth(node1)) // 3

