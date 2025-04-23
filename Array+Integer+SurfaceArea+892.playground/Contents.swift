// 892. Surface Area of 3D Shapes
// https://leetcode.com/problems/surface-area-of-3d-shapes/

import Foundation

func surfaceArea(_ grid: [[Int]]) -> Int {
    var area = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            let val = grid[i][j]
            if val == 0 { continue }
            area += 2 + 4 * val
            if i > 0 {
                area -= 2 * min(val, grid[i - 1][j])
            }
            if j > 0 {
                area -= 2 * min(val, grid[i][j - 1])
            }
        }
    }
    return area
}

print(surfaceArea([[1, 2], [3, 4]])) // 34
print(surfaceArea([[1, 1, 1], [1, 0, 1], [1, 1, 1]])) // 32
print(surfaceArea([[2, 2, 2], [2, 1, 2], [2, 2, 2]])) // 46
