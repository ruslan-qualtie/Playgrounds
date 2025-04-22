// 884. Uncommon Words from Two Sentences
// https://leetcode.com/problems/uncommon-words-from-two-sentences/

import Foundation

func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
    var freq = [String: Int](), s1arr = s1.split(separator: " "), s2arr = s2.split(separator: " "), result = [String]()
    for word in s1arr {
        freq[String(word), default: 0] += 1
    }
    for word in s2arr {
        freq[String(word), default: 0] += 1
    }
    for (k, v) in freq {
        if v == 1 {
            result.append(k)
        }
    }
    return result
}

print(uncommonFromSentences("this apple is sweet", "this apple is sour")) // ["sweet", "sour"]
print(uncommonFromSentences("apple apple", "banana")) // ["banana"]
