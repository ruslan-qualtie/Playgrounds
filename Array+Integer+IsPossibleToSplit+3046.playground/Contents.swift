// 3046. Split the Array
// https://leetcode.com/problems/split-the-array/

import Foundation

func isPossibleToSplit(_ nums: [Int]) -> Bool {
    var freq = [Int: Int]()
    for num in nums {
        freq[num, default: 0] += 1
        if freq[num]! > 2 {
            return false
        }
    }
    return true
}

print(isPossibleToSplit([1, 1, 2, 2, 3, 4])) // true
print(isPossibleToSplit([1, 1, 1, 1])) // false
