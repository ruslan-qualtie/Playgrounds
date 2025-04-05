// 3120. Count the Number of Special Characters I
// https://leetcode.com/problems/count-the-number-of-special-characters-i/

import Foundation

func numberOfSpecialChars(_ word: String) -> Int {
    var freq = [String: Int](), count = 0
    for char in word {
        if char.isUppercase {
            freq[char.lowercased(), default: 0] |= 2
        } else {
            freq[String(char), default: 0] |= 1
        }
    }
    for (_, v) in freq {
        if v == 3 {
            count += 1
        }
    }
    return count
}

print(numberOfSpecialChars("aaAbcBC")) // 3
print(numberOfSpecialChars("abc")) // 0
print(numberOfSpecialChars("abBCab")) // 1
