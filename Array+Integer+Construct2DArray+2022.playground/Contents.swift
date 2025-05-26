// 2022. Convert 1D Array Into 2D Array
// https://leetcode.com/problems/convert-1d-array-into-2d-array/

import Foundation

func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
    if m * n != original.count { return [] }
    var result = [[Int]]()
    for i in 0..<m {
        var row = [Int]()
        for j in 0..<n {
            row.append(original[i * n + j])
        }
        result.append(row)
    }
    return result
}

print(construct2DArray([1, 2, 3, 4], 2, 2)) // [[1, 2], [3, 4]]
print(construct2DArray([1, 2, 3], 1, 3)) // [[1, 2, 3]]
print(construct2DArray([1, 2], 1, 1)) // []
