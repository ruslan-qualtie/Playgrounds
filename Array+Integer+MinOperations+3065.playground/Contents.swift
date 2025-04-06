// 3065. Minimum Operations to Exceed Threshold Value I
// https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-i/

import Foundation

func minOperations(_ nums: [Int], _ k: Int) -> Int {
    var result = 0
    for num in nums {
        if num < k {
            result += 1
        }
    }
    return result
}

print(minOperations([2, 11, 10, 1 ,3], 10)) // 3
print(minOperations([1, 1, 2, 4, 9], 1)) // 0
print(minOperations([1, 1, 2, 4, 9], 9)) // 4
