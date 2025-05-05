// 2595. Number of Even and Odd Bits
// https://leetcode.com/problems/number-of-even-and-odd-bits/

import Foundation

func evenOddBit(_ n: Int) -> [Int] {
    var even = 0, odd = 0, n = n, count = 0
    while n > 0 {
        let bit = n & 1
        if count % 2 == 0 {
            even += bit
        } else {
            odd += bit
        }
        n >>= 1
        count += 1
    }
    return [even, odd]
}

print(evenOddBit(50)) // [1,2]
print(evenOddBit(2)) // [0,1]
