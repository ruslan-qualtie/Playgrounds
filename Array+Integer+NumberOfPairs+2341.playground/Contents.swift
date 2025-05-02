// 2341. Maximum Number of Pairs in Array
// https://leetcode.com/problems/maximum-number-of-pairs-in-array/

import Foundation

func numberOfPairs(_ nums: [Int]) -> [Int] {
    var freq = [Int: Int](), pairs = 0, count = nums.count
    for num in nums {
        freq[num, default: 0] += 1
        if freq[num]! % 2 == 0 {
            pairs += 1
            count -= 2
        }
    }
    return [pairs, count]
}

print(numberOfPairs([1,3,2,1,3,2,2])) // [3,1]
print(numberOfPairs([1,1])) // [1,0]
print(numberOfPairs([0])) // [0,1]
