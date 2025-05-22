// 2506. Count Pairs Of Similar Strings
// https://leetcode.com/problems/count-pairs-of-similar-strings/

import Foundation

func similarPairs(_ words: [String]) -> Int {
    var dict = [Set<Character>: Int]()
    var ans = 0
    for word in words {
        let set = Set(word)
        let value = dict[set] ?? 0
        ans += value
        dict[set] = value + 1
    }
    return ans
}

print(similarPairs(["aba","aabb","abcd","bac","aabc"])) // 2
print(similarPairs(["aabb","ab","ba"])) // 3
print(similarPairs(["nba","cba","dba"])) // 0
