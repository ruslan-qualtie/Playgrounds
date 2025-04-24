// 2160. Minimum Sum of Four Digit Number After Splitting Digits
// https://leetcode.com/problems/minimum-sum-of-four-digit-number-after-splitting-digits/

import Foundation

func minimumSum(_ num: Int) -> Int {
    var n = num, digits = [Int]()
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    digits.sort()
    return (digits[0] * 10 + digits[2]) + (digits[1] * 10 + digits[3])
}

print(minimumSum(2932)) // 52
print(minimumSum(4009)) // 13
