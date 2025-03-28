// 3364. Minimum Positive Sum Subarray
// https://leetcode.com/problems/minimum-positive-sum-subarray/

import Foundation

func minimumSumSubarray(_ nums: [Int], _ l: Int, _ r: Int) -> Int {
    var minSum = -1
    for len in l...r {
        var sum = 0, left = 0
        for right in 0..<nums.count {
            sum += nums[right]
            if right - left < len - 1 { continue }
            if right - left >= len {
                sum -= nums[left]
                left += 1
            }
            if sum > 0 {
                if minSum == -1 {
                    minSum = sum
                } else {
                    minSum = min(minSum, sum)
                }
            }
        }
    }
    return minSum
}

print(minimumSumSubarray([3, -2, 1, 4], 2, 3)) // 1
print(minimumSumSubarray([-2, 2, -3, 1], 2, 3)) // -1
print(minimumSumSubarray([1, 2, 3, 4], 2, 4)) // 3
