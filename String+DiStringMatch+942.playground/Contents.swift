// 942. DI String Match
// https://leetcode.com/problems/di-string-match/

import Foundation

func diStringMatch(_ s: String) -> [Int] {
    var left = 0, right = s.count, result = [Int]()
    for char in s {
        if char == "I" {
            result.append(left)
            left += 1
        } else {
            result.append(right)
            right -= 1
        }
    }
    result.append(left)
    return result
}

print(diStringMatch("IDID")) // [0, 4, 1, 3, 2]
print(diStringMatch("III")) // [0, 1, 2, 3]
print(diStringMatch("DDI")) // [3, 2, 0, 1]
