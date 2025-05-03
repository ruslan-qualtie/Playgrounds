// 944. Delete Columns to Make Sorted
// https://leetcode.com/problems/delete-columns-to-make-sorted/

import Foundation

func minDeletionSize(_ strs: [String]) -> Int {
    var grid = strs.map { Array($0) }, count = 0
    for j in 0..<grid[0].count {
        for i in 0..<grid.count - 1 {
            if grid[i][j] > grid[i + 1][j] {
                count += 1
                break
            }
        }
    }
    return count
}


print(minDeletionSize(["cba","daf","ghi"])) // 1
print(minDeletionSize(["a","b"])) // 0
print(minDeletionSize(["zyx","wvu","tsr"])) // 3
