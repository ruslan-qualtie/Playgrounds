// 2006. Count Number of Pairs With Absolute Difference K
// https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/

import Foundation

func countKDifference(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    for i in 0..<nums.count - 1 {
        for j in (i + 1)..<nums.count {
            if abs(nums[i] - nums[j]) == k {
                count += 1
            }
        }
    }
    return count
}

print(countKDifference([1, 2, 2, 1], 1)) // 4
print(countKDifference([1, 3], 3)) // 0
print(countKDifference([3, 2, 1, 5, 4], 2)) // 3
