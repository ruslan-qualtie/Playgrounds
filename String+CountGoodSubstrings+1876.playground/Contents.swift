// 1876. Substrings of Size Three with Distinct Characters
// https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters/

import Foundation

func countGoodSubstrings(_ s: String) -> Int {
    if s.count < 3 { return 0 }
    var sarr = Array(s), count = 0
    for i in 2..<sarr.count {
        let a = sarr[i - 2], b = sarr[i - 1], c = sarr[i]
        if a != b && a != c && b != c {
            count += 1
        }
    }
    return count
}

print(countGoodSubstrings("xyzzaz")) // 1
print(countGoodSubstrings("aababcabc")) // 4
