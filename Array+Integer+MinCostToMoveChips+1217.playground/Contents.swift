// 1217. Minimum Cost to Move Chips to The Same Position
// https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/

import Foundation

func minCostToMoveChips(_ position: [Int]) -> Int {
    var even = 0, odd = 0
    for p in position {
        if p % 2 == 0 {
            even += 1
        } else {
            odd += 1
        }
    }
    return min(even, odd)
}

print(minCostToMoveChips([1, 2, 3])) // 1
print(minCostToMoveChips([2, 2, 2, 3, 3])) // 2
print(minCostToMoveChips([1, 1000000000])) // 1


