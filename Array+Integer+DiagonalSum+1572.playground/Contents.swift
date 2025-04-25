// 1572. Matrix Diagonal Sum
// https://leetcode.com/problems/matrix-diagonal-sum/

import Foundation

func diagonalSum(_ mat: [[Int]]) -> Int {
    var sum = 0
    for i in 0..<mat.count {
        sum += mat[i][i]
        if mat.count - 1 - i != i {
            sum += mat[i][mat.count - 1 - i]
        }
    }
    return sum
}

print(diagonalSum([[1, 2, 3], [4, 5, 6], [7, 8, 9]])) // 25
print(diagonalSum([[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]])) // 8
