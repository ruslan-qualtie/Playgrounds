// 2520. Count the Digits That Divide a Number
// https://leetcode.com/problems/count-the-digits-that-divide-a-number/

import Foundation

func countDigits(_ num: Int) -> Int {
    var n = num, digits = [Int](), count = 0
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    for digit in digits {
        if num % digit == 0 {
            count += 1
        }
    }
    return count
}

print(countDigits(7)) // 1
print(countDigits(121)) // 2
print(countDigits(1248)) // 4
