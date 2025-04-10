// 521. Longest Uncommon Subsequence I
// https://leetcode.com/problems/longest-uncommon-subsequence-i/

import Foundation

func findLUSlength(_ a: String, _ b: String) -> Int {
    a == b ? -1 : max(a.count, b.count)
}

print(findLUSlength("aba", "cdc")) // 3
print(findLUSlength("aaa", "ccc")) // 3
print(findLUSlength("aaa", "aaa")) // -1
print(findLUSlength("abbb", "bbb")) // 4
