// 2255. Count Prefixes of a Given String
// https://leetcode.com/problems/count-prefixes-of-a-given-string/

import Foundation

func countPrefixes(_ words: [String], _ s: String) -> Int {
    var count = 0
    for word in words {
        if s.hasPrefix(word) {
            count += 1
        }
    }
    return count
}

print(countPrefixes(["a","b","c","ab","bc","abc"], "abc")) // 3
print(countPrefixes(["a","a"], "aa")) // 2
