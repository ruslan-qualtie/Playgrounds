// 693. Binary Number with Alternating Bits
// https://leetcode.com/problems/binary-number-with-alternating-bits/

import Foundation

func hasAlternatingBits(_ n: Int) -> Bool {
    var n = n, prev = ~(n & 1)
    while n > 0 {
        let curr = n & 1
        if curr == prev {
            return false
        }
        prev = curr
        n >>= 1
    }
    return true
}

print(hasAlternatingBits(5)) // true
print(hasAlternatingBits(7)) // false
print(hasAlternatingBits(11)) // false
