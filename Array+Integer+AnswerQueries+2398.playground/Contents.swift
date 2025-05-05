// 2389. Longest Subsequence With Limited Sum
// https://leetcode.com/problems/longest-subsequence-with-limited-sum/

import Foundation

func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
    var nums = nums, results = [Int]()
    nums.sort()
    nums = [0] + nums
    for i in 1..<nums.count {
        nums[i] += nums[i - 1]
    }
    for query in queries {
        var left = 0, right = nums.count - 1
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] <= query {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        results.append(right)
    }
    return results
}

print(answerQueries([4, 5, 2, 1], [3, 10, 21])) // [2,3,4]
print(answerQueries([2,3,4,5], [1])) // [0]
