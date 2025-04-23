// 819. Most Common Word
// https://leetcode.com/problems/most-common-word/

import Foundation

func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
    let words: [String] = paragraph.lowercased().split { !$0.isLetter }.map { String($0) }
    var freq = [String: Int](), maxCount = 0, result = ""
    for word in words {
        if !banned.contains(word) {
            freq[word, default: 0] += 1
            if freq[word]! > maxCount {
                maxCount = freq[word]!
                result = word
            }
        }
    }
    return result
}

print(mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"])) // ball
print(mostCommonWord("a.", [])) // a
