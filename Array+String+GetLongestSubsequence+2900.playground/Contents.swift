// 2900. Longest Unequal Adjacent Groups Subsequence I
// https://leetcode.com/problems/longest-unequal-adjacent-groups-subsequence-i/

import Foundation

func getLongestSubsequence(_ words: [String], _ groups: [Int]) -> [String] {
    var result = [words[0]], last = groups[0]
    for i in 1..<words.count {
        if last != groups[i] {
            last = groups[i]
            result.append(words[i])
        }
    }
    return result
}

print(getLongestSubsequence(["a", "e", "b"], [0, 0, 1])) // ["a","b"]
print(getLongestSubsequence(["a", "b", "c", "d"], [1, 0, 1, 1])) //  ["a","b","c"]
