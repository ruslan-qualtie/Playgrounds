// 2656. Maximum Sum With Exactly K Elements
// https://leetcode.com/problems/maximum-sum-with-exactly-k-elements/

import Foundation

func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
    (nums.max()! * k) + ((k - 1) * k / 2)
}

print(maximizeSum([1, 2, 3, 4, 5], 3)) // 18
print(maximizeSum([5, 5, 5], 2)) // 11

