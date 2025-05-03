// 1742. Maximum Number of Balls in a Box
// https://leetcode.com/problems/maximum-number-of-balls-in-a-box/

import Foundation

func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
    var map = [Int: Int](), maxCount = 0
    for i in lowLimit...highLimit {
        var i = i, sum = 0
        while i > 0 {
            sum += i % 10
            i /= 10
        }
        map[sum, default: 0] += 1
        if map[sum]! > maxCount {
            maxCount = map[sum]!
        }
    }
    return maxCount
}

print(countBalls(1, 10)) // 2
print(countBalls(5, 15)) // 2
print(countBalls(19, 28)) // 2
