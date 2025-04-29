// 1252. Cells with Odd Values in a Matrix
// https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/

import Foundation

func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
    var rows = Array(repeating: 0, count: m)
    var cols = Array(repeating: 0, count: n)
    var count = 0
    for i in indices {
        rows[i[0]] += 1
        cols[i[1]] += 1
    }
    for i in 0..<rows.count {
        for j in 0..<cols.count {
            if (rows[i] + cols[j]) % 2 == 1 {
                count += 1
            }
        }
    }
    return count
}

print(oddCells(2, 3, [[0, 1], [1, 1]])) // 6
print(oddCells(2, 2, [[1, 1], [0, 0]])) // 0


