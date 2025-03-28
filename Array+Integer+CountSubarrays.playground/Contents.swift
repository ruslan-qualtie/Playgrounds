// 3392. Count Subarrays of Length Three With a Condition
// https://leetcode.com/problems/count-subarrays-of-length-three-with-a-condition/

import Foundation

func countSubarrays(_ nums: [Int]) -> Int {
    var result = 0
    for i in 0..<nums.count - 2 {
        if (nums[i] + nums[i + 2]) * 2 == nums[i + 1] {
            result += 1
        }
    }
    return result
}

print(countSubarrays([1, 2, 1, 4, 1])) // 1
print(countSubarrays([1, 1, 1])) // 0
