// 766. Toeplitz Matrix
// https://leetcode.com/problems/toeplitz-matrix/

import Foundation

func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    if matrix.count == 1 || matrix[0].count == 1 { return true }
    for i in 0..<matrix.count - 1 {
        for j in 0..<matrix[i].count - 1 {
            if matrix[i][j] != matrix[i + 1][j + 1] {
                return false
            }
        }
    }
    return true
}

print(isToeplitzMatrix([[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]])) // true
print(isToeplitzMatrix([[1, 2], [2, 2]])) // false
