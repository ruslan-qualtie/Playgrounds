// 3396. Minimum Number of Operations to Make Elements in Array Distinct
// https://leetcode.com/problems/minimum-number-of-operations-to-make-elements-in-array-distinct/

import Foundation

func minimumOperations(_ nums: [Int]) -> Int {
    var n = nums, count = 0
    while n.count > 0 {
        if Set(n).count == n.count {
            break
        }
        n = Array(n.dropFirst(3))
        count += 1
    }
    return count
}

print(minimumOperations([1, 2, 3, 4, 2, 3, 3, 5, 7])) // 2
print(minimumOperations([4, 5, 6, 4, 4])) // 2
print(minimumOperations([6, 7, 8, 9])) // 0
