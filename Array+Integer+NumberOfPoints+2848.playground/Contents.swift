// 2848. Points That Intersect With Cars
// https://leetcode.com/problems/points-that-intersect-with-cars/

import Foundation

func numberOfPoints(_ nums: [[Int]]) -> Int {
    var points = Array(repeating: 0, count: 101)
    for num in nums {
        for i in num[0]...num[1] {
            points[i] = 1
        }
    }
    return points.reduce(0, +)
}

print(numberOfPoints([[3, 6], [1, 5], [4, 7]])) // 7
print(numberOfPoints([[1, 3], [5, 8]])) // 7
