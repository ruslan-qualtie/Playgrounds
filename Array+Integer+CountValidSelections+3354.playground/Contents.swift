// 3354. Make Array Elements Equal to Zero
// https://leetcode.com/problems/make-array-elements-equal-to-zero/

import Foundation

func countValidSelections(_ nums: [Int]) -> Int {
    var sumr = nums.reduce(0, +), suml = 0, count = 0
    for n in nums {
        sumr -= n
        suml += n
        if n == 0 {
            if sumr == suml {
                count += 2
            } else if abs(sumr - suml) == 1 {
                count += 1
            }
        }
    }
    return count
}

print(countValidSelections([1, 0, 2, 0, 3])) // 2
print(countValidSelections([2, 3, 4, 0, 4, 1, 0])) // 0
