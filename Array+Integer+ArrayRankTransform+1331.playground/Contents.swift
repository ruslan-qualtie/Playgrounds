// 1331. Rank Transform of an Array
// https://leetcode.com/problems/rank-transform-of-an-array/

import Foundation

func arrayRankTransform(_ arr: [Int]) -> [Int] {
    var map = [Int: Int](), arr = arr
    for (i, v) in Set(arr).sorted().enumerated() {
        map[v] = i + 1
    }
    for i in 0..<arr.count {
        arr[i] = map[arr[i]]!
    }
    return arr
}

print(arrayRankTransform([40, 10, 20, 30])) // [4, 1, 2, 3]
print(arrayRankTransform([100, 100, 100])) // [1, 1, 1]
print(arrayRankTransform([37, 12, 28, 9, 100, 56, 80, 5, 12])) // [5, 3, 4, 2, 8, 6, 7, 1, 3]
