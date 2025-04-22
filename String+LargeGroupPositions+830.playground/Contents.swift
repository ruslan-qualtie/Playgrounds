// 830. Positions of Large Groups
// https://leetcode.com/problems/positions-of-large-groups/

import Foundation

func largeGroupPositions(_ s: String) -> [[Int]] {
    var sarr = Array(s), left = 0, result = [[Int]]()
    for right in 0..<sarr.count {
        if sarr[left] != sarr[right] {
            if right - left >= 3 {
                result.append([left, right - 1])
            }
            left = right
        }
        if right == sarr.count - 1 && right - left >= 2 {
            result.append([left, right])
        }
    }
    return result
}

print(largeGroupPositions("abbxxxxzzy")) // [[3, 6]]
print(largeGroupPositions("abc")) // []
print(largeGroupPositions("abcdddeeeeaabbbcd")) // [[3, 5], [6, 9], [12, 14]]

