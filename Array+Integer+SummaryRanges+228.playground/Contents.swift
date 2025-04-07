// 228. Summary Ranges
// https://leetcode.com/problems/summary-ranges/

import Foundation

func summaryRanges(_ nums: [Int]) -> [String] {
    if nums.isEmpty { return [String]() }
    var left = 0, result = [String]()
    for right in 0..<nums.count {
        if right - left == nums[right] - nums[left] {
            continue
        }
        if right - left == 1 {
            result.append("\(nums[left])")
            left = right
        } else {
            result.append("\(nums[left])->\(nums[right - 1])")
            left = right
        }
    }
    left == nums.count - 1 ? result.append("\(nums[left])") : result.append("\(nums[left])->\(nums[nums.count - 1])")
    return result
}

print(summaryRanges([0, 1, 2, 4, 5, 7])) // ["0->2","4->5","7"]
print(summaryRanges([0, 2, 3, 4, 6, 8, 9])) // ["0","2->4","6","8->9"]
print(summaryRanges([])) // []
