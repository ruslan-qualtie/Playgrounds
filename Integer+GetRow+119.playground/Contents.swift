// 119. Pascal's Triangle II
// https://leetcode.com/problems/pascals-triangle-ii/

import Foundation

func getRow(_ rowIndex: Int) -> [Int] {
    var row:[Int] = [1]
    if rowIndex == 0 { return row }
    row.append(1)
    if rowIndex == 1 { return row }
    for i in 2...rowIndex {
        let prev = row
        row = [1]
        for j in 0..<prev.count - 1 {
            row.append(prev[j] + prev[j + 1])
        }
        row.append(1)
    }
    return row
}

print(getRow(3)) // [1, 3, 3, 1]
print(getRow(0)) // [1]
print(getRow(1)) // [1, 1]
