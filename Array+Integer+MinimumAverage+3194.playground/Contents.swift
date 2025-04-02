// 3194. Minimum Average of Smallest and Largest Elements
// https://leetcode.com/problems/minimum-average-of-smallest-and-largest-elements/

import Foundation

func minimumAverage(_ nums: [Int]) -> Double {
    var nums = nums.sorted(), left = 0, right = nums.count - 1, minAvr = 50.0
    while left < right {
        minAvr = min(minAvr, Double(nums[left] + nums[right]) / 2.0)
        left += 1
        right -= 1
    }
    return minAvr
}

print(minimumAverage([7, 8, 3, 4, 15, 13, 4, 1])) // 5.5
print(minimumAverage([1, 9, 8, 3, 10, 5])) // 5.5
print(minimumAverage([1, 2, 3, 7, 8, 9])) // 5.0
