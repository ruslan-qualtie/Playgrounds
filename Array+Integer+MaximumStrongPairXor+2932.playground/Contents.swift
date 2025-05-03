// 2932. Maximum Strong Pair XOR I
// https://leetcode.com/problems/maximum-strong-pair-xor-i/

import Foundation

func maximumStrongPairXor(_ nums: [Int]) -> Int {
    var result = Int.min
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if abs(nums[i] - nums[j]) <= min(nums[i], nums[j]) {
                result = max(result, nums[i] ^ nums[j])
            }
        }
    }
    return result
}

print(maximumStrongPairXor([1, 2, 3, 4, 5])) // 7
print(maximumStrongPairXor([10, 100])) // 0
print(maximumStrongPairXor([5, 6, 25, 30])) // 7
