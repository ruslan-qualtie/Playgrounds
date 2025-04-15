// 896. Monotonic Array
// https://leetcode.com/problems/monotonic-array/

import Foundation

func isMonotonic(_ nums: [Int]) -> Bool {
    var inc = true, dec = true
    for i in 1..<nums.count {
        if nums[i - 1] < nums[i] {
            dec = false
        } else if nums[i - 1] > nums[i] {
            inc = false
        }
        if inc == false && dec == false {
            return false
        }
    }
    return inc || dec
}

print(isMonotonic([1, 2, 2, 3])) // true
print(isMonotonic([6, 5, 4, 4])) // trur
print(isMonotonic([1, 3, 2])) // false

