// 724. Find Pivot Index
// https://leetcode.com/problems/find-pivot-index/

import Foundation

func pivotIndex(_ nums: [Int]) -> Int {
    var sumr = nums.reduce(0, +)
    var suml = 0
    for i in 0..<nums.count {
        if i > 0 {
            suml += nums[i - 1]
        }
        sumr -= nums[i]
        if sumr == suml {
            return i
        }
    }
    return -1
}

print(pivotIndex([1, 7, 3, 6, 5, 6])) // 3
print(pivotIndex([1, 2, 3])) // -1
print(pivotIndex([2, 1, -1])) // 0
print(pivotIndex([-1, -1, -1, -1, -1, 0])) // 2
