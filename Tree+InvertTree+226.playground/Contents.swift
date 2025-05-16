// 226. Invert Binary Tree
// https://leetcode.com/problems/invert-binary-tree/

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func printTreeAsArray(_ root: TreeNode?) {
    guard let root = root else {
        print([])
        return
    }
    var result: [Int?] = []
    var queue: [TreeNode?] = [root]
    while !queue.isEmpty {
        let node = queue.removeFirst()
        if let node = node {
            result.append(node.val)
            queue.append(node.left)
            queue.append(node.right)
        } else {
            result.append(nil)
        }
    }
    while let last = result.last, last == nil {
        result.removeLast()
    }
    print(result.map { $0 != nil ? "\($0!)" : "nil" })
}

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    let left = root.left
    root.left = invertTree(root.right)
    root.right = invertTree(left)
    return root
}

let tree = TreeNode(4,
    TreeNode(2,
        TreeNode(1),
        TreeNode(3)
    ),
    TreeNode(7,
        TreeNode(6),
        TreeNode(9)
    )
)

printTreeAsArray(tree)
invertTree(tree)
printTreeAsArray(tree)
