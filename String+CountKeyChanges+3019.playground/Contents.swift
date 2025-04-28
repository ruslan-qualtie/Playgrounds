// 3019. Number of Changing Keys
// https://leetcode.com/problems/number-of-changing-keys/

import Foundation

func countKeyChanges(_ s: String) -> Int {
    var count = 0, sarr = Array(s.lowercased())
    for i in 1..<sarr.count {
        if sarr[i - 1] != sarr[i] {
            count += 1
        }
    }
    return count
}

print(countKeyChanges("aAbBcC")) // 2
print(countKeyChanges("AaAaAaaA")) // 0
