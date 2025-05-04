// 1128. Number of Equivalent Domino Pairs
// https://leetcode.com/problems/number-of-equivalent-domino-pairs/

import Foundation

func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
    var freq = [[Int]: Int](), count = 0
    for d in dominoes {
        let a = min(d[0], d[1]), b = max(d[0], d[1])
        count += freq[[a, b], default: 0]
        freq[[a, b], default: 0] += 1
    }
    return count
}

print(numEquivDominoPairs([[1, 2], [2, 1], [3, 4], [5, 6]])) // 1
print(numEquivDominoPairs([[1, 2], [1, 2], [1, 1], [1, 2], [2, 2]])) // 3
