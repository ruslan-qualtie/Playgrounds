// 1221. Split a String in Balanced Strings
// https://leetcode.com/problems/split-a-string-in-balanced-strings/

import Foundation

func balancedStringSplit(_ s: String) -> Int {
    var bal = 0, count = 0
    for char in s {
        if char == "R" {
            bal += 1
        } else {
            bal -= 1
        }
        if bal == 0 {
            count += 1
        }
    }
    return count
}

print(balancedStringSplit("RLRRLLRLRL")) // 4
print(balancedStringSplit("RLRRRLLRLL")) // 2
print(balancedStringSplit("LLLLRRRR")) // 1
