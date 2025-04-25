// 1913. Maximum Product Difference Between Two Pairs
// https://leetcode.com/problems/maximum-product-difference-between-two-pairs/

import Foundation

func maxProductDifference(_ nums: [Int]) -> Int {
    var nums = nums
    nums.sort()
    return nums[nums.count - 1] * nums[nums.count - 2] - nums[1] * nums[0]
}

print(maxProductDifference([5, 6, 2, 7, 4])) // 34
print(maxProductDifference([4, 2, 5, 9, 7, 4, 8])) // 64
