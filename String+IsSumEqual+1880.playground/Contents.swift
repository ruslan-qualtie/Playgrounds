// 1880. Check if Word Equals Summation of Two Words
// https://leetcode.com/problems/check-if-word-equals-summation-of-two-words/

import Foundation

func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
    tonum(firstWord) + tonum(secondWord) == tonum(targetWord)
}

private func tonum(_ s: String) -> Int {
    var sarr = Array(s), result = 0
    for s in sarr {
        let i = Int(s.asciiValue! - 97)
        result *= 10
        result += i
    }
    return result
}

print(isSumEqual("acb", "cba", "cdb")) // true
print(isSumEqual("aaa", "a", "aab")) // false
print(isSumEqual("aaa", "a", "aaaa")) // true
