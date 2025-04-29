// 1748. Sum of Unique Elements
// https://leetcode.com/problems/sum-of-unique-elements/

import Foundation

func sumOfUnique(_ nums: [Int]) -> Int {
    var sum = 0, freq = [Int: Int]()
    for num in nums {
        freq[num, default: 0] += 1
        if freq[num]! == 1 {
            sum += num
        } else if freq[num]! == 2 {
            sum -= num
        }
    }
    return sum
}

print(sumOfUnique([1, 2, 3, 2])) // 4
print(sumOfUnique([1, 1, 1, 1])) // 0
print(sumOfUnique([1, 2, 3, 4, 5])) // 15

