// 370. Range Addition
// https://leetcode.com/problems/range-addition/description/

import Foundation

func rangeAddition(_ n: Int, _ queries: [[Int]]) -> [Int] {
    var result = Array(repeating: 0, count: n), diff = Array(repeating: 0, count: n + 1), pref = 0
    for query in queries {
        diff[query[0]] += query[2]
        diff[query[1] + 1] -= query[2]
    }
    for i in 0..<n {
        pref += diff[i]
        result[i] = pref
    }
    return result
}

print(rangeAddition(5, [[1, 3, 2], [2, 4, 3], [0, 2, -2]])) // [-2, 0, 3, 5, 3]
