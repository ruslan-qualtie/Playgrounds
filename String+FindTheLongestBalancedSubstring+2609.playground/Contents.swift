// 2609. Find the Longest Balanced Substring of a Binary String
// https://leetcode.com/problems/find-the-longest-balanced-substring-of-a-binary-string/

import Foundation

func findTheLongestBalancedSubstring(_ s: String) -> Int {
    if s.count == 1 { return 0 }
    var groups = [Int](), maxLen = 0, sarr = Array(s), count = 1
    for i in 1..<sarr.count {
        if sarr[i] == sarr[i - 1] {
            count += 1
        } else {
            groups.append(count)
            count = 1
        }
    }
    groups.append(count)
    if sarr[0] == "1" { groups.removeFirst() }
    if groups.count < 2 { return 0 }
    for i in 1..<groups.count where i % 2 == 1 {
        maxLen = max(maxLen, 2 * min(groups[i], groups[i - 1]))
    }
    return maxLen
}

print(findTheLongestBalancedSubstring("01100")) // 2
print(findTheLongestBalancedSubstring("00111")) // 4
print(findTheLongestBalancedSubstring("111")) // 0
print(findTheLongestBalancedSubstring("10")) // 0
print(findTheLongestBalancedSubstring("01100")) // 2
