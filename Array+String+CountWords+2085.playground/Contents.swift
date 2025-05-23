// 2085. Count Common Words With One Occurrence
// https://leetcode.com/problems/count-common-words-with-one-occurrence/

import Foundation

func countWords(_ words1: [String], _ words2: [String]) -> Int {
    var map1 = [String: Int](), map2 = map1, result = 0
    for word in words1 {
        map1[word, default: 0] += 1
    }
    for word in words2 {
        map2[word, default: 0] += 1
    }
    for (key1, value1) in map1 {
        if value1 == 1, let value2 = map2[key1], value2 == 1 {
            result += 1
        }
    }
    return result
}

print(countWords(["leetcode","is","amazing","as","is"], ["amazing","leetcode","is"])) // 2
print(countWords(["b","bb","bbb"], ["a","aa","aaa"])) // 0
print(countWords(["a","ab"], ["a","a","a","ab"])) // 1
