// 762. Prime Number of Set Bits in Binary Representation
// https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/

import Foundation

func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
    var count = 0
    for i in left...right {
        if primeBits(i) {
            count += 1
        }
    }
    return count
}
private func primeBits(_ num: Int) -> Bool {
    var n = num, bits = 0
    while n > 0 {
        bits += n & 1
        n >>= 1
    }
    if bits == 1 { return false }
    if bits < 4 { return true }
    for i in 2...(bits / 2) {
        if bits % i == 0 {
            return false
        }
    }
    return true
}

print(countPrimeSetBits(6, 10)) // 4
print(countPrimeSetBits(10, 15)) // 5
