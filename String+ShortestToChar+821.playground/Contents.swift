// 821. Shortest Distance to a Character
// https://leetcode.com/problems/shortest-distance-to-a-character/

import Foundation

func shortestToChar(_ s: String, _ c: Character) -> [Int] {
    let sarr = Array(s)
    var larr = Array(repeating: 0, count: s.count), rarr = larr
    var left = s.count, right = s.count
    for i in 0..<sarr.count {
        left += 1
        right += 1
        if sarr[i] == c {
            left = 0
        }
        if sarr[s.count - 1 - i] == c {
            right = 0
        }
        larr[i] = left
        rarr[s.count - 1 - i] = right
    }
    return zip(larr, rarr).map { min($0, $1) }
}

print(shortestToChar("loveleetcode", "e")) // [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
print(shortestToChar("aaab", "b")) // [3, 2, 1, 0]
