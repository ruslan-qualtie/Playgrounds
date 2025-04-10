// 628. Maximum Product of Three Numbers
// https://leetcode.com/problems/maximum-product-of-three-numbers/

import Foundation

func maximumProduct(_ nums: [Int]) -> Int {
    var nums = nums.sorted()
    return max(nums.suffix(3).reduce(1, *), (nums.prefix(2) + nums.suffix(1)).reduce(1, *))
}

print(maximumProduct([1, 2, 3])) // 6
print(maximumProduct([1, 2, 3, 4])) // 24
print(maximumProduct([-1, -2, -3])) // -6
