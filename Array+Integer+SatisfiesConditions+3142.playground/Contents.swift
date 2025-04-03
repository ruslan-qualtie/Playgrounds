// 3142. Check if Grid Satisfies Conditions
// https://leetcode.com/problems/check-if-grid-satisfies-conditions/

import Foundation

func satisfiesConditions(_ grid: [[Int]]) -> Bool {
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if i < grid.count - 1 {
                if grid[i][j] != grid[i + 1][j] {
                    return false
                }
            }
            if j < grid[i].count - 1 {
                if grid[i][j] == grid[i][j + 1] {
                    return false
                }
            }
        }
    }
    return true
}

print(satisfiesConditions([[1, 0, 2], [1, 0, 2]])) // true
print(satisfiesConditions([[1, 1, 1], [0, 0, 0]])) // false
print(satisfiesConditions([[1], [2], [3]])) // false
print(satisfiesConditions([[1, 1, 6, 1, 4, 6, 3, 1, 0, 7]])) // false
