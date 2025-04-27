// 1827. Minimum Operations to Make the Array Increasing
// https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing/

import Foundation

func minOperations(_ nums: [Int]) -> Int {
    if nums.count == 1 { return 0 }
    var count = 0, nums = nums
    for i in 0..<nums.count - 1 {
        if nums[i] < nums[i + 1] { continue }
        let diff = nums[i] - nums[i + 1] + 1
        nums[i + 1] += diff
        count += diff
    }
    return count
}

print(minOperations([1, 1, 1])) // 3
print(minOperations([1, 5, 2, 4, 1])) // 14
print(minOperations([8])) // 0
