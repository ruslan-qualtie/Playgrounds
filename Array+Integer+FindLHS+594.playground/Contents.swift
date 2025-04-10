// 594. Longest Harmonious Subsequence
// https://leetcode.com/problems/longest-harmonious-subsequence/

import Foundation

func findLHS(_ nums: [Int]) -> Int {
    var freq = [Int: Int](), maxlen = 0
    for num in nums {
        freq[num, default: 0] += 1
    }
    for key in freq.keys {
        if let value = freq[key + 1] {
            maxlen = max(maxlen, value + freq[key]!)
        }
    }
    return maxlen
}

print(findLHS([1, 3, 2, 2, 5, 2, 3, 7])) // 5
print(findLHS([1, 1, 1, 1])) // 0
print(findLHS([1, 2, 3, 4])) // 2
