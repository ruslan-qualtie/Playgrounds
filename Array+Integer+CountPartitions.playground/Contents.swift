// 3432. Count Partitions with Even Sum Difference
// https://leetcode.com/problems/count-partitions-with-even-sum-difference/

import Foundation

func countPartitions(_ nums: [Int]) -> Int {
    var lSum = 0, rSum = nums.reduce(0, +), result = 0
    for i in 0..<nums.count - 1 {
        lSum += nums[i]
        rSum -= nums[i]
        if (lSum - rSum) % 2 == 0 {
            result += 1
        }
    }
    return result
}

print(countPartitions([10,10,3,7,6])) // 4
print(countPartitions([1,2,2])) // 0
print(countPartitions([2,4,6,8])) // 3
