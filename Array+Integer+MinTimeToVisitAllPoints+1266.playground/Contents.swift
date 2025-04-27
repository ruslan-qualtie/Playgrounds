// 1266. Minimum Time Visiting All Points
// https://leetcode.com/problems/minimum-time-visiting-all-points/

import Foundation

func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
    var time = 0
    for i in 0..<points.count - 1 {
        let dx = abs(points[i + 1][0] - points[i][0])
        let dy = abs(points[i + 1][1] - points[i][1])
        let diag = min(dx, dy)
        let line = max(dx, dy) - diag
        time += diag + line
    }
    return time
}

print(minTimeToVisitAllPoints([[1, 1], [3, 4], [-1, 0]])) // 7
print(minTimeToVisitAllPoints([[3, 2], [-2, 2]])) // 5
