// 2220. Minimum Bit Flips to Convert Number
// https://leetcode.com/problems/minimum-bit-flips-to-convert-number/

import Foundation

func minBitFlips(_ start: Int, _ goal: Int) -> Int {
    var n = start ^ goal, bits = 0
    while n > 0 {
        bits += n & 1
        n >>= 1
    }
    return bits
}

print(minBitFlips(10, 7)) // 3
print(minBitFlips(3, 4)) // 3
