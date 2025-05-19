// 3024. Type of Triangle
// https://leetcode.com/problems/type-of-triangle/

import Foundation

func triangleType(_ nums: [Int]) -> String {
    if nums[0] == nums[1] && nums[1] == nums[2] { return "equilateral" }
    if nums[0] + nums[1] <= nums[2] || nums[0] + nums[2] <= nums[1] || nums[1] + nums[2] <= nums[0] { return "none" }
    if nums[0] == nums[1] || nums[1] == nums[2] || nums[2] == nums[0] { return "isosceles" }
    return "scalene"
}

print(triangleType([3, 3, 3])) // "equilateral"
print(triangleType([3, 4, 5])) // "scalene"
