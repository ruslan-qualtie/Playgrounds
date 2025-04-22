// 908. Smallest Range I
// https://leetcode.com/problems/smallest-range-i/

import Foundation

func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
    max(nums.max()! - nums.min()! - 2 * k, 0)
}

print(smallestRangeI([1], 0)) // 0
print(smallestRangeI([0, 10], 2)) // 6
print(smallestRangeI([1, 3, 6], 3)) // 0
