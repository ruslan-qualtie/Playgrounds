// 2917. Find the K-or of an Array
// https://leetcode.com/problems/find-the-k-or-of-an-array/

import Foundation

func findKOr(_ nums: [Int], _ k: Int) -> Int {
    var bits = Array(repeating: 0, count: 32), result = 0, mult = 1
    for num in nums {
        var i = 0, num = num
        while num > 0 {
            bits[i] += num & 1
            num >>= 1
            i += 1
        }
    }
    for i in 0..<bits.count {
        if bits[i] >= k {
            bits[i] = 1
        } else {
            bits[i] = 0
        }
        result += bits[i] * mult
        mult <<= 1
    }
    return result
}

print(findKOr([7, 12, 9, 8, 9, 15], 4)) // 9
