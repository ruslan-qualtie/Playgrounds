// 2544. Alternating Digit Sum
// https://leetcode.com/problems/alternating-digit-sum/

import Foundation

func alternateDigitSum(_ n: Int) -> Int {
    var n = n, digits = [Int](), sum = 0, sign = 1
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    for digit in digits.reversed() {
        sum += digit * sign
        sign *= -1
    }
    return sum
}

print(alternateDigitSum(521)) // 4
print(alternateDigitSum(111)) // 1
print(alternateDigitSum(886996)) // 0
