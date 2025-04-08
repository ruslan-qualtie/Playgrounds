// 367. Valid Perfect Square
// https://leetcode.com/problems/valid-perfect-square/

import Foundation

func isPerfectSquare(_ num: Int) -> Bool {
    var left = 0, right = num
    while left <= right {
        let mid = (right + left) / 2
        let sq = mid * mid
        if sq == num {
            return true
        } else if sq > num {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return false
}

print(isPerfectSquare(16)) // true
print(isPerfectSquare(14)) // false
