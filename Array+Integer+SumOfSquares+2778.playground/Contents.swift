// 2778. Sum of Squares of Special Elements
// https://leetcode.com/problems/sum-of-squares-of-special-elements/

import Foundation

func sumOfSquares(_ nums: [Int]) -> Int {
    var sum = 0
    for i in 0..<nums.count {
        if nums.count % (i + 1) == 0 {
            sum += nums[i] * nums[i]
        }
    }
    return sum
}

print(sumOfSquares([1, 2, 3, 4])) // 21
print(sumOfSquares([2, 7, 1, 19, 18, 3])) // 63
