// 1534. Count Good Triplets
// https://leetcode.com/problems/count-good-triplets/

import Foundation

func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
    var count = 0
    for i in 0..<arr.count - 2 {
        for j in (i + 1)..<arr.count - 1 {
            for k in (j + 1)..<arr.count {
                if abs(arr[i] - arr[j]) <= a && abs(arr[j] - arr[k]) <= b && abs(arr[i] - arr[k]) <= c {
                    count += 1
                }
            }
        }
    }
    return count
}

print(countGoodTriplets([3, 0, 1, 1, 9, 7], 7, 2, 3)) // 4
print(countGoodTriplets([1, 1, 2, 2, 3], 0, 0, 1)) // 0
