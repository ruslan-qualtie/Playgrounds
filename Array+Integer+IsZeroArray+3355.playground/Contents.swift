// 3355. Zero Array Transformation I
// https://leetcode.com/problems/zero-array-transformation-i/

import Foundation

func isZeroArray(_ nums: [Int], _ queries: [[Int]]) -> Bool {
    var diff = Array(repeating: 0, count: nums.count + 1), pref = 0
    for query in queries {
        diff[query[0]] += 1
        diff[query[1] + 1] -= 1
    }
    for (i, num) in nums.enumerated() {
        pref += diff[i]
        if pref < num {
            return false
        }
    }
    return true
}

print(isZeroArray([1, 0, 1], [[0, 2]])) // true
print(isZeroArray([4, 3, 2, 1], [[1, 3], [0, 2]])) // false
