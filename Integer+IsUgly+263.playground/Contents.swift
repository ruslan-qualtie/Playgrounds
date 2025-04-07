// 263. Ugly Number
// https://leetcode.com/problems/ugly-number/

import Foundation

func isUgly(_ n: Int) -> Bool {
    if n < 1 { return false }
    var n = n
    while n % 2 == 0 { n /= 2 }
    while n % 3 == 0 { n /= 3 }
    while n % 5 == 0 { n /= 5 }
    return n == 1
}

print(isUgly(6)) // true
print(isUgly(1)) // true
print(isUgly(14)) // false
