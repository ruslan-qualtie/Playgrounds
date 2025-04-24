// 2894. Divisible and Non-divisible Sums Difference
// https://leetcode.com/problems/divisible-and-non-divisible-sums-difference/

import Foundation

func differenceOfSums(_ n: Int, _ m: Int) -> Int {
    var ndsum = 0, dsum = 0
    for i in 1...n {
        if i % m == 0 {
            dsum += i
        } else {
            ndsum += i
        }
    }
    return ndsum - dsum
}

print(differenceOfSums(10, 3)) // 19
print(differenceOfSums(5, 6)) // 15
print(differenceOfSums(5, 1)) // -15
