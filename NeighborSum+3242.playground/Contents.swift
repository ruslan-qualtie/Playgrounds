// 3242. Design Neighbor Sum Service
// https://leetcode.com/problems/design-neighbor-sum-service/

import Foundation

class NeighborSum {
    private var grid: [[Int]]
    init(_ grid: [[Int]]) {
        self.grid = grid
    }
    
    func adjacentSum(_ value: Int) -> Int {
        let i = index(value)
        var sum = 0
        if i[0] > 0 { sum += grid[i[0] - 1][i[1]] }
        if i[0] < grid.count - 1 { sum += grid[i[0] + 1][i[1]] }
        if i[1] > 0 { sum += grid[i[0]][i[1] - 1] }
        if i[1] < grid.count - 1 { sum += grid[i[0]][i[1] + 1] }
        return sum

    }
    
    func diagonalSum(_ value: Int) -> Int {
        let i = index(value)
        var sum = 0
        if i[0] > 0 && i[1] > 0 { sum += grid[i[0] - 1][i[1] - 1] }
        if i[0] > 0 && i[1] < grid.count - 1 { sum += grid[i[0] - 1][i[1] + 1] }
        if i[0] < grid.count - 1 && i[1] > 0 { sum += grid[i[0] + 1][i[1] - 1] }
        if i[0] < grid.count - 1 && i[1] < grid.count - 1 { sum += grid[i[0] + 1][i[1] + 1] }
        return sum
    }

    private func index(_ value: Int) -> [Int] {
        var result = [Int]()
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == value {
                    result = [i, j]
                    break
                }
            }
        }
        return result
    }
}

let obj = NeighborSum([[0, 1, 2], [3, 4, 5], [6, 7, 8]])
print(obj.adjacentSum(1)) // 6
print(obj.adjacentSum(4)) // 16
print(obj.diagonalSum(4)) // 16
print(obj.diagonalSum(8)) // 4

let obj2 = NeighborSum([[1, 2, 0, 3],  [4, 7, 15, 6], [8, 9, 10, 11], [12, 13, 14, 5]])
print(obj2.adjacentSum(15)) // 23
print(obj2.diagonalSum(9)) // 45
