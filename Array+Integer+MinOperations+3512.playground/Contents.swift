// 3512. Minimum Operations to Make Array Sum Divisible by K
// https://leetcode.com/problems/minimum-operations-to-make-array-sum-divisible-by-k/

import Foundation

func minOperations(_ nums: [Int], _ k: Int) -> Int {
    nums.reduce(0, +) % k
}

print(minOperations([3, 9, 7], 5)) // 4
print(minOperations([4, 1, 3], 4)) // 0
print(minOperations([3, 2], 6)) // 5
