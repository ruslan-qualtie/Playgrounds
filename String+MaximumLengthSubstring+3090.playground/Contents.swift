// 3090. Maximum Length Substring With Two Occurrences
// https://leetcode.com/problems/maximum-length-substring-with-two-occurrences/

import Foundation

func maximumLengthSubstring(_ s: String) -> Int {
    var freq = [Character: Int](), sarr = Array(s), left = 0, len = 0
    for right in 0..<sarr.count {
        let char = sarr[right]
        freq[char, default: 0] += 1
        while freq[char]! > 2 {
            freq[sarr[left]]! -= 1
            left += 1
        }
        len = max(len, right - left + 1)
    }
    return len
}

print(maximumLengthSubstring("bcbbbcba")) // 4
print(maximumLengthSubstring("aaaa")) // 2
