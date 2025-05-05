// 1030. Matrix Cells in Distance Order
// https://leetcode.com/problems/matrix-cells-in-distance-order/

import Foundation

func allCellsDistOrder(_ rows: Int, _ cols: Int, _ rCenter: Int, _ cCenter: Int) -> [[Int]] {
    var cells = [[Int]]()
    for i in 0..<rows {
        for j in 0..<cols {
            cells.append([i, j])
        }
    }
    cells.sort {
        abs(rCenter - $0[0]) + abs(cCenter - $0[1]) < abs(rCenter - $1[0]) + abs(cCenter - $1[1])
    }
    return cells
}

print(allCellsDistOrder(1, 2, 0, 0)) // [[0,0],[0,1]]
print(allCellsDistOrder(2, 2, 0, 1)) // [[0,1],[0,0],[1,1],[1,0]]
print(allCellsDistOrder(2, 3, 1, 2)) // [[1,2],[0,2],[1,1],[0,1],[1,0],[0,0]]
