// 3136. Valid Word
// https://leetcode.com/problems/valid-word/

import Foundation

func isValid(_ word: String) -> Bool {
    if word.count < 3 { return false }
    let vowels = ["a", "e", "i", "o", "u"]
    var valid = true , hasVowels = false, hasConsonant = false
    for char in word {
        if !char.isNumber && !char.isLetter {
            valid = false
            break
        }
        if char.isLetter {
            if vowels.contains(char.lowercased()) {
                hasVowels = true
            } else {
                hasConsonant = true
            }
        }
    }
    return valid && hasVowels && hasConsonant
}

print(isValid("234Adas")) // true
print(isValid("b3")) // false
print(isValid("a3$e")) // false
