// 3375. Minimum Operations to Make Array Values Equal to K
// https://leetcode.com/problems/minimum-operations-to-make-array-values-equal-to-k/

import Foundation

func minOperations(_ nums: [Int], _ k: Int) -> Int {
    let n = (nums + [k]).sorted()
    if n[0] < k { return -1 }
    var prev = n[0], count = 0
    for num in n {
        if num > prev {
            prev = num
            count += 1
        }
    }
    return count
}

print(minOperations([5, 2, 5, 4, 5], 2)) // 2
print(minOperations([2, 1, 2], 2)) // -1
print(minOperations([9, 7, 5, 3], 1)) // 4
