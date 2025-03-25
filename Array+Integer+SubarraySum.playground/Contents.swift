// 3427. Sum of Variable Length Subarrays
// https://leetcode.com/problems/sum-of-variable-length-subarrays/

import Foundation

func subarraySum(_ nums: [Int]) -> Int {
    var start = 0, sum = 0
    for i in 0..<nums.count {
        start = max(0, i - nums[i])
        for j in start...i {
            sum += nums[j]
        }
    }
    return sum
}


print(subarraySum([2, 3, 1])) // 11
print(subarraySum([3, 1, 1, 2])) // 13
