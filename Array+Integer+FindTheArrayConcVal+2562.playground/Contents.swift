// 2562. Find the Array Concatenation Value
// https://leetcode.com/problems/find-the-array-concatenation-value/

import Foundation

func findTheArrayConcVal(_ nums: [Int]) -> Int {
    var left = 0, right = nums.count - 1, sum = 0
    while left <= right {
        if left == right {
            sum += nums[left]
        } else {
            sum += Int(String(nums[left]) + String(nums[right]))!
        }
        left += 1
        right -= 1
    }
    return sum
}

print(findTheArrayConcVal([7, 52, 2, 4])) // 596
print(findTheArrayConcVal([5, 14, 13, 8, 12])) // 673
