// 3507. Minimum Pair Removal to Sort Array I
// https://leetcode.com/problems/minimum-pair-removal-to-sort-array-i/

import Foundation

func minimumPairRemoval(_ nums: [Int]) -> Int {
    var nums = nums, operation = 0
    while !isSorted(nums) {
        var minSum = Int.max, minIndex = -1
        for i in 0..<nums.count - 1 {
            let sum = nums[i] + nums[i + 1]
            if sum < minSum {
                minSum = sum
                minIndex = i
            }
        }
        nums[minIndex] = nums[minIndex] + nums[minIndex + 1]
        nums.remove(at: minIndex + 1)
        operation += 1
    }
    return operation
}

private func isSorted(_ nums: [Int]) -> Bool {
    for i in 1..<nums.count {
        if nums[i - 1] > nums[i] {
            return  false
        }
    }
    return true
}

print(minimumPairRemoval([5, 2, 3, 1])) // 2
print(minimumPairRemoval([1, 2, 2])) // 0
