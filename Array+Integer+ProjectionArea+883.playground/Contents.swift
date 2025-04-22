// 883. Projection Area of 3D Shapes
// https://leetcode.com/problems/projection-area-of-3d-shapes/

import Foundation

func projectionArea(_ grid: [[Int]]) -> Int {
    var xy = 0, xz = 0, yz = Array(repeating: 0, count: grid[0].count)
    for i in 0..<grid.count {
        xz += grid[i].max()!
        for j in 0..<grid[i].count {
            let item = grid[i][j]
            if item > 0 {
                xy += 1
            }
            yz[j] = max(yz[j], item)
        }
    }
    return xy + xz + yz.reduce(0, +)
}

print(projectionArea([[1, 2], [3, 4]])) // 17
print(projectionArea([[2]])) // 5
print(projectionArea([[1, 0], [0, 2]])) // 8
