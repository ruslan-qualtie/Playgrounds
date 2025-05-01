// 2733. Neither Minimum nor Maximum
// https://leetcode.com/problems/neither-minimum-nor-maximum/

import Foundation

func findNonMinOrMax(_ nums: [Int]) -> Int {
    if nums.count < 3 { return -1 }
    let minv = nums.min()!, maxv = nums.max()!
    for num in nums {
        if num > minv && num < maxv {
            return num
        }
    }
    return -1
}

print(findNonMinOrMax([3,2,1,4])) // 3
print(findNonMinOrMax([2,1])) // -1
print(findNonMinOrMax([3,2,1])) // 2
