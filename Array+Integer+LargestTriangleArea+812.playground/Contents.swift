// 812. Largest Triangle Area
// https://leetcode.com/problems/largest-triangle-area/

import Foundation

func largestTriangleArea(_ points: [[Int]]) -> Double {
    var maxArea: Double = 0
    for x in 0..<points.count - 2 {
        for y in (x + 1)..<points.count - 1 {
            for z in (y + 1)..<points.count {
                maxArea = max(maxArea, area(points[x], points[y], points[z]))
            }
        }
    }
    return maxArea
}

private func area(_ x: [Int], _ y: [Int], _ z: [Int]) -> Double {
    abs(Double((y[0] - x[0]) * (z[1] - x[1]) - (z[0] - x[0]) * (y[1] - x[1]))) / 2.0
}

print(largestTriangleArea([[0, 0], [0, 1], [1, 0], [0, 2], [2, 0]])) // 2.0
print(largestTriangleArea([[1, 0], [0, 0], [0, 1]])) // 0.5
