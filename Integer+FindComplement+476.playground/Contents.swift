// 476. Number Complement
// https://leetcode.com/problems/number-complement/

import Foundation

func findComplement(_ num: Int) -> Int {
    var n = num, res = 0, mult = 1
    while n > 0 {
        let digit = n % 1 << 1 ^ 1
        res += digit * mult
        mult <<= 1
        n >>= 1
    }
    return res
}

print(findComplement(5)) // 2
print(findComplement(1)) // 0
