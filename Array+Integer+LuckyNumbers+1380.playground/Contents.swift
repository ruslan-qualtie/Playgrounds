// 1380. Lucky Numbers in a Matrix
// https://leetcode.com/problems/lucky-numbers-in-a-matrix/

import Foundation

func luckyNumbers(_ matrix: [[Int]]) -> [Int] {
    var rmin = Array(repeating: 0, count: matrix.count)
    var cmax = Array(repeating: 0, count: matrix[0].count)
    for i in 0..<matrix.count {
        rmin[i] = matrix[i].min()!
        for j in 0..<matrix[i].count {
            cmax[j] = max(cmax[j], matrix[i][j])
        }
    }
    return Array(Set(rmin).intersection(cmax))
}

print(luckyNumbers([[3, 7, 8], [9, 11, 13], [15, 16, 17]])) // 15
print(luckyNumbers([[1, 10, 4, 2], [9, 3, 8, 7], [15, 16, 17, 12]])) // 12
print(luckyNumbers([[7, 8], [1, 2]])) // 7
