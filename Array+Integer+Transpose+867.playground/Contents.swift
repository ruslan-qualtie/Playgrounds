// 867. Transpose Matrix
// https://leetcode.com/problems/transpose-matrix/

import Foundation

func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var result = Array(repeating: [Int](), count: matrix[0].count)
    for j in 0..<matrix[0].count {
        for i in 0..<matrix.count {
            result[j].append(matrix[i][j])
        }
    }
    return result
}

print(transpose([[1, 2, 3], [4, 5, 6], [7, 8, 9]])) // [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
print(transpose([[1, 2, 3], [4, 5, 6]])) // [[1, 4], [2, 5], [3, 6]]
