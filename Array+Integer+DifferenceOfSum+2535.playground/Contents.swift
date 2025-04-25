// 2535. Difference Between Element Sum and Digit Sum of an Array
// https://leetcode.com/problems/difference-between-element-sum-and-digit-sum-of-an-array/

import Foundation

func differenceOfSum(_ nums: [Int]) -> Int {
    var result = 0
    for num in nums {
        result += num
        var n = num
        while n > 0 {
            result -= n % 10
            n /= 10
        }
    }
    return abs(result)
}

print(differenceOfSum([1, 15, 6, 3])) // 9
print(differenceOfSum([1, 2, 3, 4])) // 0
