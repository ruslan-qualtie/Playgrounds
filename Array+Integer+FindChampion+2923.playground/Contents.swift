// 2923. Find Champion I
// https://leetcode.com/problems/find-champion-i/

import Foundation

func findChampion(_ grid: [[Int]]) -> Int {
    var result = 0
    for i in 0..<grid.count {
        if grid[i].reduce(0, +) == grid.count - 1 {
            result = i
        }
    }
    return result
}

print(findChampion([[0, 1], [0, 0]])) // 0
print(findChampion([[0, 0, 1], [1, 0, 1], [0, 0, 0]])) // 1

