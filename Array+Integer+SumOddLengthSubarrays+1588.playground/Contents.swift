// 1588. Sum of All Odd Length Subarrays
// https://leetcode.com/problems/sum-of-all-odd-length-subarrays/

import Foundation

func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
    var sum = 0
    for i in 0..<arr.count {
        for j in i..<arr.count where (i + j) % 2 == 0 {
            sum += arr[i...j].reduce(0, +)
        }
    }
    return sum
}

print(sumOddLengthSubarrays([1, 4, 2, 5, 3])) // 58
print(sumOddLengthSubarrays([1, 2])) // 3
print(sumOddLengthSubarrays([10, 11, 12])) // 66
