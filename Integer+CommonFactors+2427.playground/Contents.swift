// 2427. Number of Common Factors
// https://leetcode.com/problems/number-of-common-factors/

import Foundation

func commonFactors(_ a: Int, _ b: Int) -> Int {
    var n = min(a, b), count = 0
    for i in 1...n where a % i == 0 && b % i == 0 {
        count += 1
    }
    return count
}

print(commonFactors(12, 6)) // 4
print(commonFactors(25, 30)) // 2
