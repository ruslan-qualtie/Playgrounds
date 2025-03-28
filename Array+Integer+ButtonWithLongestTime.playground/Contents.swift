// 3386. Button with Longest Push Time
//

import UIKit

func buttonWithLongestTime(_ events: [[Int]]) -> Int {
    var acc = [Int: Int](), time = 0, maxValue = 0, minKey = -1
    for event in events {
        let eTime = acc[event[0], default: 0]
        if eTime < event[1] - time {
            acc[event[0]] = event[1] - time
        }
        time += event[1] - time
    }
    for (key, value) in acc {
        if value > maxValue {
            maxValue = value
            minKey = key
        } else if value == maxValue {
            minKey = min(minKey, key)
        }
    }
    return minKey
}

print(buttonWithLongestTime([[1, 2], [2, 5], [3, 9], [1, 15]])) // 1
print(buttonWithLongestTime([[10, 5], [1, 7]])) // 10
print(buttonWithLongestTime([[4, 5], [19, 10], [3, 11], [3, 12], [6, 15], [1, 20]])) // 1
print(buttonWithLongestTime([[7, 1], [19, 3], [9, 4], [12, 5], [2, 8], [15, 10], [18, 12], [7, 14], [19, 16]])) // 2
