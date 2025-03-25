// 3417. Zigzag Grid Traversal With Skip
// https://leetcode.com/problems/zigzag-grid-traversal-with-skip/

import Foundation

func zigzagTraversal(_ grid: [[Int]]) -> [Int] {
    var result = [Int]()
    for i in 0..<grid.count {
        if i % 2 == 0 {
            for j in 0..<grid[i].count where j % 2 == 0 {
                result.append(grid[i][j])
            }
        } else {
            for j in (0..<grid[i].count).reversed() where j % 2 == 1 {
                result.append(grid[i][j])
            }
        }
    }
    return result
}

print(zigzagTraversal([[1, 2],[3, 4]])) // [1, 4]
print(zigzagTraversal([[2, 1],[2, 1],[2, 1]])) // [2, 1, 2]
print(zigzagTraversal([[1, 2, 3], [4, 5, 6], [7, 8, 9]])) // [1, 3, 5, 7, 9]
