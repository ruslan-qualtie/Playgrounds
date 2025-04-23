// 746. Min Cost Climbing Stairs
// https://leetcode.com/problems/min-cost-climbing-stairs/

import Foundation

func minCostClimbingStairs(_ cost: [Int]) -> Int {
    var costs = Array(repeating: 0, count: cost.count + 1)
    for i in 2..<costs.count {
        costs[i] = min(costs[i - 1] + cost[i - 1], costs[i - 2] + cost[i - 2])
    }
    return costs.last!
}

print(minCostClimbingStairs([10, 15, 20])) // 15
print(minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1])) // 6
