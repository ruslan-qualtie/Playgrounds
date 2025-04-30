// 961. N-Repeated Element in Size 2N Array
// https://leetcode.com/problems/n-repeated-element-in-size-2n-array/

import Foundation

func repeatedNTimes(_ nums: [Int]) -> Int {
    var freq = [Int: Int](), result = 0
    for num in nums {
        freq[num, default: 0] += 1
        if freq[num]! == 2 {
            result = num
            break
        }
    }
    return result
}

print(repeatedNTimes([1, 2, 3, 3])) // 3
print(repeatedNTimes([2, 1, 2, 5, 3, 2])) // 2
print(repeatedNTimes([5, 1, 5, 2, 5, 3, 5, 4])) // 5
