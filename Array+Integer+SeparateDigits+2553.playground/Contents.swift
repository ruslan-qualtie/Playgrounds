// 2553. Separate the Digits in an Array
// https://leetcode.com/problems/separate-the-digits-in-an-array/

import Foundation

func separateDigits(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    for num in nums {
        var num = num, digits = [Int]()
        while num > 0 {
            digits.append(num % 10)
            num /= 10
        }
        result.append(contentsOf: digits.reversed())
    }
    return result
}

print(separateDigits([13, 25, 83, 77])) // [1, 3, 2, 5, 8, 3, 7, 7]
print(separateDigits([7, 1, 3, 9])) // [7, 1, 3, 9]
