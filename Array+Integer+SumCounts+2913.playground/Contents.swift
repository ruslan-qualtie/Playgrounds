// 2913. Subarrays Distinct Element Sum of Squares I
// https://leetcode.com/problems/subarrays-distinct-element-sum-of-squares-i/

import Foundation

func sumCounts(_ nums: [Int]) -> Int {
    var count = 0
    for i in 0..<nums.count {
        for j in i..<nums.count {
            let dist = Set(nums[i...j]).count
            count += dist * dist
        }
    }
    return count
}

print(sumCounts([1, 2, 1])) // 15
print(sumCounts([1, 1])) // 3
