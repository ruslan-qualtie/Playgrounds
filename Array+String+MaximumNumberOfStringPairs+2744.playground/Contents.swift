// 2744. Find Maximum Number of String Pairs
// https://leetcode.com/problems/find-maximum-number-of-string-pairs/

import Foundation

func maximumNumberOfStringPairs(_ words: [String]) -> Int {
    var count = 0
    for i in 0..<words.count - 1 {
        for j in (i + 1)..<words.count {
            if words[i] == String(words[j].reversed()) {
                count += 1
            }
        }
    }
    return count
}

print(maximumNumberOfStringPairs(["cd","ac","dc","ca","zz"])) // 2
print(maximumNumberOfStringPairs(["ab","ba","cc"])) // 1
print(maximumNumberOfStringPairs(["aa","ab"])) // 0
