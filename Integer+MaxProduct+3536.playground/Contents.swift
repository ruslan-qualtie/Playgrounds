// 3536. Maximum Product of Two Digits
// https://leetcode.com/problems/maximum-product-of-two-digits/

import Foundation

func maxProduct(_ n: Int) -> Int {
    var n = n, digits = [Int]()
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    if digits.count == 2 { return digits[0] * digits[1] }
    digits.sort(by: >)
    return digits[0] * digits[1]
}

print(maxProduct(31)) // 3
print(maxProduct(22)) // 4
print(maxProduct(124)) // 8
