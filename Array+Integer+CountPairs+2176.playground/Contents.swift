// 2176. Count Equal and Divisible Pairs in an Array
// https://leetcode.com/problems/count-equal-and-divisible-pairs-in-an-array/

import Foundation

func countPairs(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    for i in 0..<nums.count - 1 {
        for j in (i + 1)..<nums.count {
            if (i * j) % k == 0 && nums[i] == nums[j] {
                count += 1
            }
        }
    }
    return count
}

print(countPairs([3, 1, 2, 2, 2, 1, 3], 2)) // 4
print(countPairs([1, 2, 3, 4], 1)) // 0
