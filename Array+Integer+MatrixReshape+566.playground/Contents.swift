// 566. Reshape the Matrix
// https://leetcode.com/problems/reshape-the-matrix/

import Foundation

func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    if r * c != mat.count * mat[0].count { return mat }
    var flat = mat.reduce([], +)
    if r == 1 { return [flat] }
    var row = [Int](), result = [[Int]]()
    for num in flat {
        row.append(num)
        if row.count == c {
            result.append(row)
            row = []
        }
    }
    return result
}

print(matrixReshape([[1, 2], [3, 4]], 1, 4)) // [[1, 2, 3, 4]]
print(matrixReshape([[1, 2], [3, 4]], 2, 4)) // [[1, 2], [3, 4]]
print(matrixReshape([[1, 2], [3, 4]], 4, 1)) // [[1], [2], [3], [4]]
