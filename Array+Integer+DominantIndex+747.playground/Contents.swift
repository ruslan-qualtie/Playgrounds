// 747. Largest Number At Least Twice of Others
// https://leetcode.com/problems/largest-number-at-least-twice-of-others/

import Foundation

func dominantIndex(_ nums: [Int]) -> Int {
    let maxNum = nums.max()!
    var nums = nums, index = -1
    index = nums.firstIndex(of: maxNum)!
    nums.remove(at: index)
    let nextMax = nums.max()!
    if 2 * nextMax <= maxNum {
        return index
    }
    return -1
}

print(dominantIndex([3, 6, 1, 0])) // 1
print(dominantIndex([1, 2, 3, 4])) // -1
print(dominantIndex([0, 0, 0, 4])) // -1
