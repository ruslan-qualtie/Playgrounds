// 2154. Keep Multiplying Found Values by Two
// https://leetcode.com/problems/keep-multiplying-found-values-by-two/

import Foundation

func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
    var original = original
    while nums.contains(original) {
        original <<= 1
    }
    return original
}

print(findFinalValue([5, 3, 6, 1, 12], 3)) // 24
print(findFinalValue([2, 7, 9], 4)) // 4
