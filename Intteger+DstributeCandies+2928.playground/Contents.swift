// 2928. Distribute Candies Among Children I
// https://leetcode.com/problems/distribute-candies-among-children-i/

import Foundation

func distributeCandies(_ n: Int, _ limit: Int) -> Int {
    var count = 0
    for a in 0...min(n, limit) {
        for b in 0...min(n - a, limit) {
            let c = n - a - b
            if c <= limit {
                count += 1
            }
        }
    }
    return count
}

print(distributeCandies(5, 2)) // 3
print(distributeCandies(3, 3)) // 10
