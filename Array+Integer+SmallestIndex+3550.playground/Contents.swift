// 3550. Smallest Index With Digit Sum Equal to Index
// https://leetcode.com/problems/smallest-index-with-digit-sum-equal-to-index/

import Foundation

func smallestIndex(_ nums: [Int]) -> Int {
    var result = Int.max
    for i in 0..<nums.count {
        var num = nums[i]
        if num < 10 && num == i {
            result = min(result, i)
        } else {
            var sum = 0
            while num > 0 {
                sum += num % 10
                num /= 10
            }
            if sum == i {
                result = min(result, i)
            }
        }

    }
    return result == Int.max ? -1 : result
}

print(smallestIndex([1, 3, 2])) // 2
print(smallestIndex([1, 10, 11])) // 1
print(smallestIndex([1, 2, 3])) // -1
