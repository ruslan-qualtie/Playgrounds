// 1281. Subtract the Product and Sum of Digits of an Integer
// https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

import Foundation

func subtractProductAndSum(_ n: Int) -> Int {
    var sum = 0, prod = 1, n = n
    while n > 0 {
        let digit = n % 10
        n /= 10
        sum += digit
        prod *= digit
    }
    return prod - sum
}

print(subtractProductAndSum(234)) // 15
print(subtractProductAndSum(4421)) // 21

