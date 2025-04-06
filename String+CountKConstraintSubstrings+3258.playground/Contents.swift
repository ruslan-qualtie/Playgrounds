// 3258. Count Substrings That Satisfy K-Constraint I
// https://leetcode.com/problems/count-substrings-that-satisfy-k-constraint-i/

import Foundation

func countKConstraintSubstrings(_ s: String, _ k: Int) -> Int {
    var sarr = Array(s), result = 0
    for i in 0..<sarr.count {
        for j in i..<sarr.count {
            let sub = sarr[i...j]
            var zeros = 0, ones = 0
            for d in sub {
                if d == "0" {
                    zeros += 1
                } else {
                    ones += 1
                }
            }
            if zeros <= k || ones <= k {
                result += 1
            }
        }
    }
    return result
}

print(countKConstraintSubstrings("10101", 1)) // 12
print(countKConstraintSubstrings("1010101", 2)) // 25
print(countKConstraintSubstrings("11111", 1)) // 15
