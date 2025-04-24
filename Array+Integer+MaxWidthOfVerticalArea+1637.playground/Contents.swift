// 1637. Widest Vertical Area Between Two Points Containing No Points
// https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points/

import Foundation

func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
    let p = points.sorted { $0[0] < $1[0] }
    var maxWidth = 0
    for i in 1..<p.count {
        if p[i - 1][1] != p[i][1] {
            let width = p[i][0] - p[i - 1][0]
            if width > maxWidth {
                maxWidth = width
            }
        }
    }
    return maxWidth
}

print(maxWidthOfVerticalArea([[8, 7], [9, 9], [7, 4], [9, 7]])) // 1
print(maxWidthOfVerticalArea([[3, 1], [9, 0], [1, 0], [1, 4], [5, 3], [8, 8]])) // 3
