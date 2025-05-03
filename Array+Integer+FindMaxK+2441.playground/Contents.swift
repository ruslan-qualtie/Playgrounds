// 2441. Largest Positive Integer That Exists With Its Negative
// https://leetcode.com/problems/largest-positive-integer-that-exists-with-its-negative/

import Foundation

func findMaxK(_ nums: [Int]) -> Int {
    var result = -1
    for num in nums {
        if num > 0 && nums.contains(-num) {
            if num > result {
                result = num
            }
        }
    }
    return result
}

print(findMaxK([-1,2,-3,3])) // 3
print(findMaxK([-1,10,6,7,-7,1])) // 7
print(findMaxK([-10,8,6,7,-2,-3])) // -1
