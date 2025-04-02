// 2873. Maximum Value of an Ordered Triplet I
// https://leetcode.com/problems/maximum-value-of-an-ordered-triplet-i/

import Foundation

func maximumTripletValue(_ nums: [Int]) -> Int {
    var maxValue = 0
    for i in 0..<nums.count - 2 {
        for j in (i + 1)..<nums.count - 1 {
            for k in (j + 1)..<nums.count {
                let value = (nums[i] - nums[j]) * nums[k]
                maxValue = max(value, maxValue)
            }
        }
    }
    return maxValue
}

print(maximumTripletValue([12, 6, 1, 2, 7])) // 77
print(maximumTripletValue([1, 10, 3, 4, 19])) // 133
print(maximumTripletValue([1, 2, 3])) // 0
print(maximumTripletValue([10, 13, 6, 2])) // 14
