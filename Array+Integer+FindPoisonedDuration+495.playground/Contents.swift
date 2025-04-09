// 495. Teemo Attacking
// https://leetcode.com/problems/teemo-attacking/

import Foundation

func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    var result = 0
    for i in 0..<timeSeries.count {
        if i < timeSeries.count - 1 {
            let interval = timeSeries[i + 1] - timeSeries[i]
            result += interval < duration ? interval : duration
        } else {
            result += duration
        }
    }
    return result
}

print(findPoisonedDuration([1, 4], 2)) // 4
print(findPoisonedDuration([1, 2], 2)) // 3
