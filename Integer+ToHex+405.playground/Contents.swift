// 405. Convert a Number to Hexadecimal
// https://leetcode.com/problems/convert-a-number-to-hexadecimal/

import Foundation

func toHex(_ num: Int) -> String {
    if num == 0 { return "0" }
    var num = num, hex = "0123456789abcdef".map { $0 }, result = ""
    if num < 0 { num += 1 << 32 }
    while num > 0 {
        result = String(hex[num % 1 << 4]) + result
        num >>= 4
    }
    return result
}

print(toHex(26)) // "1a"
print(toHex(-1)) // "ffffffff"

