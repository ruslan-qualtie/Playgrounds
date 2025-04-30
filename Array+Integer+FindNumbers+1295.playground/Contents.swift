// 1295. Find Numbers with Even Number of Digits
// https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

import Foundation

func findNumbers(_ nums: [Int]) -> Int {
    var count = 0
    for num in nums {
        var num = num, digits = 0
        while num > 0 {
            digits += 1
            num /= 10
        }
        if digits % 2 == 0 {
            count += 1
        }
    }
    return count
}


print(findNumbers([12, 345, 2, 6, 7890])) // 2
print(findNumbers([555, 901, 482, 1771])) // 1

