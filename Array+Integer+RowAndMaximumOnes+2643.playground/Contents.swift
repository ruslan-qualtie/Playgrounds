// 2643. Row With Maximum Ones
// https://leetcode.com/problems/row-with-maximum-ones/

import Foundation

func rowAndMaximumOnes(_ mat: [[Int]]) -> [Int] {
    var minindex = 0, maxones = 0
    for (index, row) in mat.enumerated() {
        let ones = row.reduce(0, +)
        if ones > maxones {
            maxones = ones
            minindex = index
        }
    }
    return [minindex, maxones]
}

print(rowAndMaximumOnes([[0, 1], [1, 0]])) // [0, 1]
print(rowAndMaximumOnes([[0, 0, 0], [0, 1, 1]])) // [1, 2]
print(rowAndMaximumOnes([[0, 0], [1, 1], [0, 0]])) // [1, 2]
