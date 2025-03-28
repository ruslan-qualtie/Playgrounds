// 3379. Transformed Array
// https://leetcode.com/problems/transformed-array/

import Foundation

func constructTransformedArray(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var result = [Int]()
    for i in 0..<n {
        var index = (i + nums[i]) % n
        if index < 0 {
            index += n
        }
        result.append(nums[index])
    }
    return result
}

print(constructTransformedArray([3, -2, 1, 1])) // [1, 1, 1, 3]
print(constructTransformedArray([-1, 4, -1])) // [-1, -1, 4]

