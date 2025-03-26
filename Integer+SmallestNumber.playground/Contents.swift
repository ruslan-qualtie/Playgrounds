// 3345. Smallest Divisible Digit Product I
// https://leetcode.com/problems/smallest-divisible-digit-product-i/

import Foundation

func smallestNumber(_ n: Int, _ t: Int) -> Int {
    var num = n
    while digitsProduct(of: num) % t != 0 {
        num += 1
    }
    return num
}

private func digitsProduct(of num: Int) -> Int {
    var num = num, prod = 1
    while num > 0 {
        prod *= num % 10
        num /= 10
    }
    return prod
}

print(digitsProduct(of: 15))  // 5
print(digitsProduct(of: 29))  // 18
print(digitsProduct(of: 100)) // 0

print(smallestNumber(10, 2)) // 10
print(smallestNumber(15, 3)) // 16
