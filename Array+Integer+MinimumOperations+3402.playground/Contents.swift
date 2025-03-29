// 3402. Minimum Operations to Make Columns Strictly Increasing
// https://leetcode.com/problems/minimum-operations-to-make-columns-strictly-increasing/

import Foundation

func minimumOperations(_ grid: [[Int]]) -> Int {
    var count = 0, grid = grid
    for col in 0..<grid[0].count {
        for row in 1..<grid.count {
            let curr = grid[row][col]
            let prev = grid[row - 1][col]
            let diff = prev - curr
            if diff >= 0 {
                grid[row][col] += diff + 1
                count += diff + 1
            }
        }
    }
    return count
}

print(minimumOperations([[3, 2], [1, 3], [3, 4], [0, 1]])) // 15
print(minimumOperations([[3,2,1],[2,1,0],[1,2,3]])) // 12
