// 2670. Find the Distinct Difference Array
// https://leetcode.com/problems/find-the-distinct-difference-array/

import Foundation

func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
    var result = [Int](), nset = Set<Int>()
    for num in nums {
        nset.insert(num)
        result.append(nset.count)
    }
    nset = Set<Int>()
    for i in (0..<nums.count).reversed() {
        result[i] -= nset.count
        nset.insert(nums[i])
    }
    return result
}

print(distinctDifferenceArray([1, 2, 3, 4, 5])) // [-3, -1, 1, 3, 5]
print(distinctDifferenceArray([3, 2, 3, 4, 2])) // [-2, -1, 0, 2, 3]
print(distinctDifferenceArray([37, 37, 37, 37, 33])) // [-1, -1, -1, 0, 2]
