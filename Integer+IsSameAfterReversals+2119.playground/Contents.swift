// 2119. A Number After a Double Reversal
// https://leetcode.com/problems/a-number-after-a-double-reversal/

import Foundation

func isSameAfterReversals(_ num: Int) -> Bool {
    if num == 0 { return true }
    return num % 10 != 0
}

print(isSameAfterReversals(526)) // true
print(isSameAfterReversals(1800)) // false
print(isSameAfterReversals(0)) // true
