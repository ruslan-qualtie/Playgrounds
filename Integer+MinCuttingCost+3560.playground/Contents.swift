// 3560. Find Minimum Log Transportation Cost
// https://leetcode.com/problems/find-minimum-log-transportation-cost/

import Foundation

func minCuttingCost(_ n: Int, _ m: Int, _ k: Int) -> Int {
    if n <= k && m <= k {
        return 0
    }
    return (max(n, m) - k) * k
}

print(minCuttingCost(6, 5, 5)) // 5
print(minCuttingCost(4, 4, 6)) // 0
