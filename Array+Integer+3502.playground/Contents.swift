// 3502. Minimum Cost to Reach Every Position
// https://leetcode.com/problems/minimum-cost-to-reach-every-position/

import Foundation

func minCosts(_ cost: [Int]) -> [Int] {
    var minCost = cost[0], res = [Int]()
    for i in 0..<cost.count {
        minCost = min(minCost, cost[i])
        res.append(minCost)
    }
    return res
}

print(minCosts([5, 3, 4, 1, 3, 2])) // [5, 3, 3, 1, 1, 1]
print(minCosts([1, 2, 4, 6, 7])) // [1, 1, 1, 1, 1]
