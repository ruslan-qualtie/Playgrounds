// 1389. Create Target Array in the Given Order
// https://leetcode.com/problems/create-target-array-in-the-given-order/

import Foundation

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var result = [Int]()
    for (num, index) in zip(nums, index) {
        result.insert(num,  at: index)
    }
    return result
}

print(createTargetArray([0, 1, 2, 3, 4], [0, 1, 2, 2, 1])) // [0, 4, 1, 3, 2]
print(createTargetArray([1, 2, 3, 4, 0], [0, 1, 2, 3, 0])) // [0, 1, 2, 3, 4]
print(createTargetArray([1], [0])) // [1]
