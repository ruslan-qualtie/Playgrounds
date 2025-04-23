// 748. Shortest Completing Word
// https://leetcode.com/problems/shortest-completing-word/

import Foundation

func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
    let chars = licensePlate.lowercased().filter { $0.isLetter }
    var freq = [Character: Int](), minLen = Int.max, result = ""
    for char in chars {
        freq[char, default: 0] += 1
    }
    for word in words {
        var curr = freq
        for char in word {
            if let value = curr[char] {
                if value == 1 {
                    curr[char] = nil
                } else {
                    curr[char]! -= 1
                }
            }
        }
        if curr.isEmpty {
            if minLen > word.count {
                minLen = word.count
                result = word
            }
        }
    }
    return result
}

print(shortestCompletingWord("1s3 PSt", ["step", "steps", "stripe", "stepple"])) // "steps"
print(shortestCompletingWord("1s3 456", ["looks", "pest", "stew", "show"])) // "pest"
