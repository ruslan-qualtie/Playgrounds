// 575. Distribute Candies
// https://leetcode.com/problems/distribute-candies/

import Foundation

func distributeCandies(_ candyType: [Int]) -> Int {
    min(candyType.count / 2, Set(candyType).count)
}

print(distributeCandies([1, 1, 2, 2, 3, 3])) // 3
print(distributeCandies([1, 1, 2, 3])) // 2
print(distributeCandies([6, 6, 6, 6])) // 1
