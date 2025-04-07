// 118. Pascal's Triangle
// https://leetcode.com/problems/pascals-triangle/

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    var result = [[1]]
    if numRows == 1 { return result }
    result.append([1, 1])
    if numRows == 2 { return result }
    for i in 2...numRows - 1 {
        var row = [1]
        for j in 0..<result[i - 1].count - 1 {
            row.append(result[i - 1][j] + result[i - 1][j + 1])
        }
        row.append(1)
        result.append(row)
    }
    return result
}

print(generate(5)) // [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
print(generate(1)) // [[1]]
