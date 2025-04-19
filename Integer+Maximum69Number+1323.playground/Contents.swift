// 1323. Maximum 69 Number
// https://leetcode.com/problems/maximum-69-number/

import Foundation

func maximum69Number (_ num: Int) -> Int {
    var n = num, digits = [Int](), result = 0, first = false
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    for i in (0..<digits.count).reversed() {
        result *= 10
        if !first && digits[i] == 6 {
            digits[i] = 9
            first = true
        }
        result += digits[i]
    }
    return result
}

print(maximum69Number(9669)) // 9969
print(maximum69Number(9996)) // 9999
print(maximum69Number(9999)) // 9999

