// 1967. Number of Strings That Appear as Substrings in Word
// https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

import Foundation

func numOfStrings(_ patterns: [String], _ word: String) -> Int {
    var count = 0
    for p in patterns {
        if word.contains(p) {
            count += 1
        }
    }
    return count
}

print(numOfStrings(["a","abc","bc","d"], "abc")) // 3
print(numOfStrings(["a","b","c"], "aaaaabbbbb")) // 2
print(numOfStrings(["a","a","a"], "ab")) // 3
