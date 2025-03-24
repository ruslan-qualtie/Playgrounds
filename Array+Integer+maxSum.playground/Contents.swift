// 3487. Maximum Unique Subarray Sum After Deletion
// https://leetcode.com/problems/maximum-unique-subarray-sum-after-deletion/

import Foundation

func maxUniqueSubarraySum(_ nums: [Int]) -> Int {
    let posNums = nums.filter { $0 > 0 }
    if posNums.isEmpty { return nums.max()! }
    return Set(posNums).reduce(0, +)
}

func maxUniqueSubarraySum2(_ nums: [Int]) -> Int {
    let filteredNums = nums.filter { $0 >= 0 }
    if filteredNums.isEmpty { return nums.max() ?? 0 }

    var left = 0, sum = 0, maxSum = 0, seen = Set<Int>()
    
    for right in 0..<filteredNums.count {
        if seen.contains(filteredNums[right]) {
            while filteredNums[left] != filteredNums[right] {
                left += 1
            }
            seen.remove(filteredNums[left])
            sum -= filteredNums[left]
            left += 1
        }
        seen.insert(filteredNums[right])
        sum += filteredNums[right]
        maxSum = max(maxSum, sum)
    }
    
    return maxSum
}

print(maxUniqueSubarraySum([4, 0, 0, 13, 1]))  // ✅ 18
print(maxUniqueSubarraySum([-20, 20]))  // 20 ✅
print(maxUniqueSubarraySum([4, 2, 4, 5, 6]))  // 17 ✅
print(maxUniqueSubarraySum([5, 2, 1, 2, 5, 2, 1, 2, 5]))  // 8 ✅
print(maxUniqueSubarraySum([-5, -2, -3, -1]))  // -1 ✅ (лучший подмассив — `[-1]`)
print(maxUniqueSubarraySum([1, 2, 3, 4, 5]))  // 15 ✅


print(maxUniqueSubarraySum2([4, 0, 0, 13, 1]))  // ✅ 18
print(maxUniqueSubarraySum2([-20, 20]))  // 20 ✅
print(maxUniqueSubarraySum2([4, 2, 4, 5, 6]))  // 17 ✅
print(maxUniqueSubarraySum2([5, 2, 1, 2, 5, 2, 1, 2, 5]))  // 8 ✅
print(maxUniqueSubarraySum2([-5, -2, -3, -1]))  // -1 ✅ (лучший подмассив — `[-1]`)
print(maxUniqueSubarraySum2([1, 2, 3, 4, 5]))  // 15 ✅
