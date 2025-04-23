// 1399. Count Largest Group
// https://leetcode.com/problems/count-largest-group/

import Foundation

func countLargestGroup(_ n: Int) -> Int {
    var freq = [Int: Int]()
    for i in 1...n {
        var sum = 0, num = i
        while num > 0 {
            sum += num % 10
            num /= 10
        }
        freq[sum, default: 0] += 1
    }
    let maxCount = freq.values.max()!
    var count = 0
    for (_, v) in freq {
        if v == maxCount {
            count += 1
        }
    }
    return count
}

print(countLargestGroup(13)) // 4
print(countLargestGroup(2))  // 2
