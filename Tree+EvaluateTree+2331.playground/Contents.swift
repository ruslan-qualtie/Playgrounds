// 2331. Evaluate Boolean Binary Tree
// https://leetcode.com/problems/evaluate-boolean-binary-tree/

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

func evaluateTree(_ root: TreeNode?) -> Bool {
    let val = root!.val
    switch val {
        case 1: return true
        case 2: return evaluateTree(root?.left) || evaluateTree(root?.right)
        case 3: return evaluateTree(root?.left) && evaluateTree(root?.right)
        default: return false
    }
}

let node5 = TreeNode(1)
let node4 = TreeNode(0)
let node3 = TreeNode(3, node5, node4)
let node2 = TreeNode(1)
let node1 = TreeNode(2, node2, node3)

print(evaluateTree(node1)) // true
