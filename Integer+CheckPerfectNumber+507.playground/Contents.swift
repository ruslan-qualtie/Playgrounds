// 507. Perfect Number
// https://leetcode.com/problems/perfect-number/

import Foundation

func checkPerfectNumber(_ num: Int) -> Bool {
    if num == 1 { return false }
    var sum = 0
    for i in 1...num / 2 where num % i == 0 {
        sum += i
    }
    return sum == num
}

print(checkPerfectNumber(28)) // true
print(checkPerfectNumber(7)) // false
