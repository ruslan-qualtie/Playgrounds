// 3028. Ant on the Boundary
// https://leetcode.com/problems/ant-on-the-boundary/

import Foundation

func returnToBoundaryCount(_ nums: [Int]) -> Int {
    var sum = 0, count = 0
    for num in nums {
        sum += num
        if sum == 0 {
            count += 1
        }
    }
    return count
}

print(returnToBoundaryCount([2, 3, -5])) // 1
print(returnToBoundaryCount([3, 2, -3, -4])) // 0
