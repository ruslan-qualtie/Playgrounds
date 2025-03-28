// 3370. Smallest Number With All Set Bits
// https://leetcode.com/problems/smallest-number-with-all-set-bits/

import Foundation

func smallestNumber(_ n: Int) -> Int {
    var num = 0
    while num < n {
        num = num << 1 + 1
    }
    return num
}

print(smallestNumber(5))  // 7
print(smallestNumber(10)) // 15
print(smallestNumber(3))  // 3
