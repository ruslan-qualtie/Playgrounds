// 3095. Shortest Subarray With OR at Least K I
// https://leetcode.com/problems/shortest-subarray-with-or-at-least-k-i/

import Foundation

func minimumSubarrayLength(_ nums: [Int], _ k: Int) -> Int {
    var minlen = Int.max
    for i in 0..<nums.count {
        for j in i..<nums.count {
            if nums[i...j].reduce(0, |) >= k {
                minlen = min(minlen, j - i + 1)
            }
        }
    }
    return minlen == Int.max ? -1 : minlen
}

print(minimumSubarrayLength([1, 2, 3], 2)) // 1
print(minimumSubarrayLength([2, 1, 8], 10)) // 3
print(minimumSubarrayLength([1, 2], 0)) // 1
