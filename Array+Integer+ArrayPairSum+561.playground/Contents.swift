// 561. Array Partition
// https://leetcode.com/problems/array-partition/

import Foundation

func arrayPairSum(_ nums: [Int]) -> Int {
    var nums = nums.sorted(), result = 0
    for i in stride(from: 0, to: nums.count, by: 2) {
        result += nums[i]
    }
    return result
}

print(arrayPairSum([1, 4, 3, 2])) // 4
print(arrayPairSum([6, 2, 6, 5, 1, 2])) // 9
