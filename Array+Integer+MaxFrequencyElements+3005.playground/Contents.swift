// 3005. Count Elements With Maximum Frequency
// https://leetcode.com/problems/count-elements-with-maximum-frequency/

import Foundation

func maxFrequencyElements(_ nums: [Int]) -> Int {
    var freq = [Int: Int]()
    for num in nums {
        freq[num, default: 0] += 1
    }
    let maxf = freq.values.max()!
    var count = 0
    for (_, v) in freq {
        if v == maxf {
            count += v
        }
    }
    return count
}

print(maxFrequencyElements([1, 2, 2, 3, 1, 4])) // 4
print(maxFrequencyElements([1, 2, 3, 4, 5])) // 5
