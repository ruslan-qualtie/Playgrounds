// 3386. Button with Longest Push Time
// https://leetcode.com/problems/button-with-longest-push-time/

import UIKit

func buttonWithLongestTime(_ events: [[Int]]) -> Int {
    var time = events[0][1], maxTime = events[0][1], minKey = events[0][0]
    for i in 1..<events.count {
        time = events[i][1] - events[i - 1][1]
        if time > maxTime {
            maxTime = time
            minKey = events[i][0]
        } else if time == maxTime {
            minKey = min(minKey, events[i][0])
        }
    }
    return minKey
}

print(buttonWithLongestTime([[1, 2], [2, 5], [3, 9], [1, 15]])) // 1
print(buttonWithLongestTime([[10, 5], [1, 7]])) // 10
print(buttonWithLongestTime([[4, 5], [19, 10], [3, 11], [3, 12], [6, 15], [1, 20]])) // 1
print(buttonWithLongestTime([[7, 1], [19, 3], [9, 4], [12, 5], [2, 8], [15, 10], [18, 12], [7, 14], [19, 16]])) // 2
