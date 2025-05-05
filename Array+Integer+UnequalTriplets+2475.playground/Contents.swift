// 2475. Number of Unequal Triplets in Array
// https://leetcode.com/problems/number-of-unequal-triplets-in-array/

import Foundation

func unequalTriplets(_ nums: [Int]) -> Int {
    var count = 0
    for i in 0..<nums.count - 2 {
        for j in (i + 1)..<nums.count - 1 {
            for k in (j + 1)..<nums.count {
                if nums[i] != nums[j] && nums[i] != nums[k] && nums[j] != nums[k] {
                    count += 1
                }
            }
        }
    }
    return count
}

print(unequalTriplets([4,4,2,4,3])) // 3
print(unequalTriplets([1,1,1,1,1])) // 0
