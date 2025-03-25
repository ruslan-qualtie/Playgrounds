// 3423. Maximum Difference Between Adjacent Elements in a Circular Array
// https://leetcode.com/problems/maximum-difference-between-adjacent-elements-in-a-circular-array/

import Foundation

func maxAdjacentDistance(_ nums: [Int]) -> Int {
    var maxDiff = abs(nums.last! - nums.first!)
    for i in 0..<nums.count - 1  {
        maxDiff = max(maxDiff, abs(nums[i + 1] - nums[i]))
    }
    return maxDiff
}

print(maxAdjacentDistance([1, 2, 4])) // 3
print(maxAdjacentDistance([-5, -10, -5])) // 5
