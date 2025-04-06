// 3200. Maximum Height of a Triangle
// https://leetcode.com/problems/maximum-height-of-a-triangle/

import Foundation

func maxHeightOfTriangle(_ red: Int, _ blue: Int) -> Int {
    max(levels(red, blue), levels(blue, red))
}
private func levels(_ x: Int, _ y: Int) -> Int {
    var x = x, y = y, level = 0
    while x >= 0 && y >= 0 {
        level += 1
        if level % 2 == 1 {
            x -= level
        } else {
            y -= level
        }
    }
    return level - 1
}

print(maxHeightOfTriangle(2, 4)) // 3
print(maxHeightOfTriangle(2, 1)) // 2
print(maxHeightOfTriangle(1, 1)) // 1
print(maxHeightOfTriangle(10, 1)) // 2
