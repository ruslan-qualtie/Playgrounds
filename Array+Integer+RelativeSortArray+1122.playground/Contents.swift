// 1122. Relative Sort Array
// https://leetcode.com/problems/relative-sort-array/

import Foundation

func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var order = [Int: Int]()
    for i in 0..<arr2.count {
        order[arr2[i]] = i
    }

    return arr1.sorted {
        if let order1 = order[$0], let order2 = order[$1] {
            return order1 < order2
        } else if order[$0] != nil {
            return true
        } else if order[$1] != nil {
            return false
        }
        return $0 < $1
    }
}

print(relativeSortArray([2,3,1,3,2,4,6,7,9,2,19], [2,1,4,3,9,6])) // [2,2,2,1,4,3,3,9,6,7,19]
print(relativeSortArray([28,6,22,8,44,17], [22,28,8,6])) // [22,28,8,6,17,44]

