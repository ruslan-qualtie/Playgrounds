// 868. Binary Gap
// https://leetcode.com/problems/binary-gap/

import Foundation

func binaryGap(_ n: Int) -> Int {
    var n = n, ones = 0, index = 0, last = -1, gap = 0
    while n > 0 {
        let digit = n % 2
        if digit == 1 {
            ones += 1
            if last != -1 {
                gap = max(gap, index - last)
            }
            last = index
        }
        n /= 2
        index += 1
    }
    if ones < 2 { return 0 }
    return gap
}

print(binaryGap(22)) // 2
print(binaryGap(8)) // 0
print(binaryGap(5)) // 2
