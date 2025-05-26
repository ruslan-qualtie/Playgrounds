// 3545. Minimum Deletions for At Most K Distinct Characters
// https://leetcode.com/problems/minimum-deletions-for-at-most-k-distinct-characters/

import Foundation

func minDeletion(_ s: String, _ k: Int) -> Int {
    var freq = [Character: Int]()
    for char in s {
        freq[char, default: 0] += 1
    }
    let counts = freq.sorted { $0.1 < $1.1 }
    if counts.count <= k {
        return 0
    }
    var sum = 0
    for i in 0..<(counts.count - k) {
        sum += counts[i].1
    }
    return sum
}

print(minDeletion("abc", 2)) // 1
print(minDeletion("aabb", 2)) // 0
print(minDeletion("yyyzz", 1)) // 2
