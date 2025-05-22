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

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    BSTFrom(nums, 0, nums.count - 1)
}

private func BSTFrom(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode?  {
    if left > right { return nil }
    let mid = (left + right) / 2
    return TreeNode(nums[mid], BSTFrom(nums, left, mid - 1), BSTFrom(nums, mid + 1, right))
}

printTreeAsArray(sortedArrayToBST([-1, 3])) // ["-1", "nil", "3"]
printTreeAsArray(sortedArrayToBST([-10, -3, 0, 5, 9])) // ["0", "-10", "5", "nil", "-3", "nil", "9"]
