// 2460. Apply Operations to an Array
// https://leetcode.com/problems/apply-operations-to-an-array/

import Foundation

func applyOperations(_ nums: [Int]) -> [Int] {
    var nums = nums, left = 0
    for i in 1..<nums.count {
        if nums[i - 1] == nums[i] {
            nums[i - 1] *= 2
            nums[i] = 0
        }
    }
    for right in 1..<nums.count {
        if nums[left] == 0 {
            if nums[right] != 0 {
                nums.swapAt(left, right)
                left += 1
            }
        } else {
            left += 1
        }
    }
    return nums
}

print(applyOperations([1, 2, 2, 1, 1, 0])) // [1, 4, 2, 0, 0, 0]
