// 2057. Smallest Index With Equal Value
// https://leetcode.com/problems/smallest-index-with-equal-value/

import Foundation

func smallestEqual(_ nums: [Int]) -> Int {
    var index = -1
    for i in 0..<nums.count {
        if nums[i] % 10 == i % 10 {
            index = i
            break
        }
    }
    return index
}

print(smallestEqual([0, 1, 2])) // 0
print(smallestEqual([4, 3, 2, 1])) // 2
print(smallestEqual([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])) // 1
