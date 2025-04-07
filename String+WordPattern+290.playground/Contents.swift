// 290. Word Pattern
// https://leetcode.com/problems/word-pattern/

import Foundation

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    var pair = [String: Character](), parr = Array(pattern), sarr = s.split(separator: " ")
    if parr.count != sarr.count { return false }
    for i in 0..<parr.count {
        if let char = pair[String(sarr[i])] {
            if char != parr[i] {
                return false
            }
        } else {
            pair[String(sarr[i])] = parr[i]
        }
    }
    return Set(pair.values).count == pair.values.count
}

print(wordPattern("abba", "dog cat cat dog")) // true
print(wordPattern("abba", "dog cat cat fish")) // false
print(wordPattern("aaaa", "dog cat cat dog")) // false
