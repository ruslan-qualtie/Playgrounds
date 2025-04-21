// 2639. Find the Width of Columns of a Grid
// https://leetcode.com/problems/find-the-width-of-columns-of-a-grid/

import Foundation

func findColumnWidth(_ grid: [[Int]]) -> [Int] {
    var result = Array(repeating: 0, count: grid[0].count)
    for row in grid {
        for i in 0..<row.count {
            let cwidth = String(row[i]).count
            if result[i] < cwidth {
                result[i] = cwidth
            }
        }
    }
    return result
}

print(findColumnWidth([[1], [22], [333]])) // [3]
print(findColumnWidth([[-15, 1, 3], [15, 7, 12], [5, 6, -2]])) // [3, 1, 2]

