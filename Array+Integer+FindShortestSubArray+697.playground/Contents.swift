// 697. Degree of an Array
// https://leetcode.com/problems/degree-of-an-array/

import Foundation

func findShortestSubArray(_ nums: [Int]) -> Int {
    var freq = [Int: Int](), first = freq, last = freq, degree = 0, n = nums.count
    for i in 0..<n {
        freq[nums[i], default: 0] += 1
        last[nums[i]] = i
        if first[nums[i]] == nil { first[nums[i]] = i }
    }
    degree = freq.values.max()!
    for (k, v) in freq where v == degree {
        n = min(n, last[k]! - first[k]! + 1)
    }
    return n
}

print(findShortestSubArray([1, 2, 2, 3, 1])) // 2
print(findShortestSubArray([1, 2, 2, 3, 1, 4, 2])) // 6
