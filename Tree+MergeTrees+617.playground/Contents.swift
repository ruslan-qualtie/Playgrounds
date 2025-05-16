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

func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
    if root1 == nil && root2 == nil { return nil }
    if root1 == nil && root2 != nil { return root2 }
    if root1 != nil && root2 == nil { return root1 }
    root1!.val += root2!.val
    root1!.left = mergeTrees(root1!.left, root2!.left)
    root1!.right = mergeTrees(root1!.right, root2!.right)
    return root1
}

let root1 = TreeNode(1,
    TreeNode(3,
        TreeNode(5),
        nil
    ),
    TreeNode(2)
)

let root2 = TreeNode(2,
    TreeNode(1,
        nil,
        TreeNode(4)
    ),
    TreeNode(3,
        nil,
        TreeNode(7)
    )
)
printTreeAsArray(root1)
printTreeAsArray(root2)
printTreeAsArray(mergeTrees(root1, root2))
