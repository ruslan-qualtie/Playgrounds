// 3330. Find the Original Typed String I
// https://leetcode.com/problems/find-the-original-typed-string-i/

import Foundation

func possibleStringCount(_ word: String) -> Int {
    var result = 1
    if word.count == 1 { return result }
    let wArr = Array(word)
    for i in 1..<wArr.count {
        if wArr[i] == wArr[i - 1] {
            result += 1
        }
    }
    return result
}

print(possibleStringCount("abbcccc")) // 5
print(possibleStringCount("abcd"))    // 1
print(possibleStringCount("aaaa"))    // 4
