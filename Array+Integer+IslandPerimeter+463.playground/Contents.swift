// 463. Island Perimeter
// https://leetcode.com/problems/island-perimeter/

import Foundation

func islandPerimeter(_ grid: [[Int]]) -> Int {
    var result = 0
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                result += 4
                if i > 0 && grid[i - 1][j] == 1 { result -= 2 }
                if j > 0 && grid[i][j - 1] == 1 { result -= 2 }
            }
        }
    }
    return result
}

print(islandPerimeter([[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]])) // 16
print(islandPerimeter([[1]])) // 4
print(islandPerimeter([[0, 1, 1]])) // 6
