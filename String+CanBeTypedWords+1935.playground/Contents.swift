// 1935. Maximum Number of Words You Can Type
// https://leetcode.com/problems/maximum-number-of-words-you-can-type/

import Foundation

func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
    var words = text.split(separator: " "), bl = Array(brokenLetters), count = words.count
    for word in words {
        var isBroken = false
        for b in bl {
            if word.contains(b) {
                isBroken = true
                break
            }
        }
        if isBroken {
            count -= 1
        }
    }
    return count
}

print(canBeTypedWords("hello world", "ad")) // 1
print(canBeTypedWords("leet code", "lt")) // 1
print(canBeTypedWords("leet code", "e")) // 0
