// 3127. Make a Square with the Same Color
// https://leetcode.com/problems/make-a-square-with-the-same-color/

import Foundation

func canMakeSquare(_ grid: [[Character]]) -> Bool {
    for a in 0...1 {
        for b in 0...1 {
            var fill = 0
            for i in 0...1 {
                for j in 0...1 {
                    fill += grid[a + i][b + j] == "B" ? 0 : 1
                }
            }
            if fill != 2 {
                return true
            }
        }
    }
    return false
}

print(canMakeSquare([["B","W","B"],["B","W","W"],["B","W","B"]])) // true
print(canMakeSquare([["B","W","B"],["W","B","W"],["B","W","B"]])) // false
print(canMakeSquare([["B","W","B"],["B","W","W"],["B","W","W"]])) // true
