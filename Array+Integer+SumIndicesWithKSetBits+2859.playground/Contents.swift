// 2859. Sum of Values at Indices With K Set Bits
// https://leetcode.com/problems/sum-of-values-at-indices-with-k-set-bits/

import Foundation

func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {
    var sum = 0
    for (i, v) in nums.enumerated() {
        if i.nonzeroBitCount == k {
            sum += v
        }
    }
    return sum
}

print(sumIndicesWithKSetBits([5, 10, 1, 5, 2], 1)) // 13
print(sumIndicesWithKSetBits([4, 3, 2, 1], 2)) // 1
