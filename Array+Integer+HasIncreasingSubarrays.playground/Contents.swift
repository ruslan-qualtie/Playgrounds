// 3349. Adjacent Increasing Subarrays Detection I
// https://leetcode.com/problems/adjacent-increasing-subarrays-detection-i/

import Foundation

func hasIncreasingSubarrays(_ nums: [Int], _ k: Int) -> Bool {
    for i in 0...(nums.count - 2 * k) {
        if isIncreasingSubarray(nums, i, k) && isIncreasingSubarray(nums, i + k, k) {
            return true
        }
    }
    return false
}
private func isIncreasingSubarray(_ nums: [Int], _ start: Int, _ k: Int) -> Bool {
    if start + k - 1 > nums.count { return false }
    for i in start..<(start + k - 1) {
        if nums[i] >= nums[i + 1] {
            return false
        }
    }
    return true
}

print(isIncreasingSubarray([2, 5, 7, 8, 9, 2, 3, 4, 3, 1], 2, 3)) // true
print(isIncreasingSubarray([2, 5, 7, 8, 9, 2, 3, 4, 3, 1], 5, 3)) // true
print(isIncreasingSubarray([2, 5, 7, 8, 9, 2, 3, 4, 3, 1], 6, 3)) // false

print(hasIncreasingSubarrays([2, 5, 7, 8, 9, 2, 3, 4, 3, 1], 3))  // true
print(hasIncreasingSubarrays([1, 2, 3, 4, 4, 4, 4, 5, 6, 7], 3))  // false
