// 1450. Number of Students Doing Homework at a Given Time
// https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/

import Foundation

func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    var count = 0
    for (s, e) in zip(startTime, endTime) {
        if e >= queryTime && s <= queryTime {
            count += 1
        }
    }
    return count
}

print(busyStudent([1,2,3], [3,2,7], 4)) // 1
print(busyStudent([4], [4], 4)) // 1
