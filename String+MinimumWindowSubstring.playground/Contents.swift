// 76. Minimum Window Substring
// https://leetcode.com/problems/minimum-window-substring/

import Foundation

func minWindow(_ s: String, _ t: String) -> String {
    var sArr = Array(s), tArr = Array(t)
    var need = [Character: Int](), window = [Character: Int]()
    for char in tArr { need[char, default: 0] += 1 }
    var left = 0, right = 0, valid = 0, minLen = Int.max, start = 0
    while right < sArr.count {
        let char = sArr[right]
        right += 1
        if need[char] != nil {
            window[char, default: 0] += 1
            if window[char] == need[char] {
                valid += 1
            }
        }
        while valid == need.count {
            if right - left < minLen {
                minLen = right - left
                start = left
            }
            let leftChar = sArr[left]
            left += 1
            if need[leftChar] != nil {
                if window[leftChar] == need[leftChar] {
                    valid -= 1
                }
                window[leftChar]! -= 1
            }
        }
    }
    return minLen == Int.max ? "" : String(sArr[start..<start+minLen])
}

print(minWindow("ADOBECODEBANC", "ABC")) // BANC
