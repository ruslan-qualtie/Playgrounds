// 3184. Count Pairs That Form a Complete Day I
// https://leetcode.com/problems/count-pairs-that-form-a-complete-day-i/

import Foundation

func countCompleteDayPairs(_ hours: [Int]) -> Int {
    var count = 0
    for i in 0..<hours.count - 1 {
        for j in (i + 1)..<hours.count {
            if (hours[i] + hours[j]) % 24 == 0 {
                count += 1
            }
        }
    }
    return count
}

print(countCompleteDayPairs([12, 12, 30, 24, 24])) // 2
print(countCompleteDayPairs([72, 48, 24, 3])) // 3
