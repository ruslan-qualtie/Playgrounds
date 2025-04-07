// 383. Ransom Note
// https://leetcode.com/problems/ransom-note/

import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var freq = [Character: Int]()
    for char in magazine {
        freq[char, default: 0] += 1
    }
    for char in ransomNote {
        freq[char, default: 0] -= 1
    }
    for value in freq.values {
        if value < 0 {
            return false
        }
    }
    return true
}

print(canConstruct("a", "b")) // false
print(canConstruct("aa", "ab")) // false
print(canConstruct("aa", "aab")) // true
