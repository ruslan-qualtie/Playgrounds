// 1403. Minimum Subsequence in Non-Increasing Order
// https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order/

import Foundation

func minSubsequence(_ nums: [Int]) -> [Int] {
    var nums = nums.sorted(by: >), pref = nums.reduce(0, +), sum = 0, result = [Int]()
    for num in nums {
        sum += num
        pref -= num
        result.append(num)
        if sum > pref {
            break
        }
    }
    return result
}

print(minSubsequence([4, 3, 10, 9, 8])) // [10, 9]
print(minSubsequence([4, 4, 7, 6, 7])) // [7, 7, 6]

