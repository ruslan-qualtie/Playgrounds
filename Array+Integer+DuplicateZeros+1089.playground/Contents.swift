// 1089. Duplicate Zeros
// https://leetcode.com/problems/duplicate-zeros/

import Foundation

func duplicateZeros(_ arr: inout [Int]) {
    var zeros = 0, p = 0
    while p < arr.count - zeros {
        if arr[p] == 0 {
            zeros += 1
        }
        p += 1
    }
    if zeros == 0 { return }
    if zeros + p > arr.count {
        p -= 1
        zeros -= 1
        arr[p + zeros] = arr[p]
    }
    while p > 0 {
        p -= 1
        arr[p + zeros] = arr[p]
        if arr[p] == 0 {
            zeros -= 1
            arr[p + zeros] = 0
        }
    }
}

var arr1 = [1, 0, 2, 3, 0, 4, 5, 0]
duplicateZeros(&arr1)
print(arr1) // [1,0,0,2,3,0,0,4]

var arr2 = [1, 2, 3]
duplicateZeros(&arr2)
print(arr2) // [1, 2, 3]
