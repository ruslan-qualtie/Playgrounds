// 1356. Sort Integers by The Number of 1 Bits
// https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/

import Foundation

func sortByBits(_ arr: [Int]) -> [Int] {
    var arr = arr
    arr.sort {
        if $0.nonzeroBitCount < $1.nonzeroBitCount {
            return true
        } else if $0.nonzeroBitCount == $1.nonzeroBitCount {
            return $0 < $1
        }
        return false
    }
    return arr
}

print(sortByBits([0, 1, 2, 3, 4, 5, 6, 7, 8])) // [0, 1, 2, 4, 8, 3, 5, 6, 7]
print(sortByBits([1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1])) // [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]

