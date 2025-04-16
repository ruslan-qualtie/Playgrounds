// 1103. Distribute Candies to People
// https://leetcode.com/problems/distribute-candies-to-people/

import Foundation

func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
    var result = Array(repeating: 0, count: num_people), n = candies, index = 0
    while n > 0 {
        result[index % num_people] += min(n, index + 1)
        index += 1
        n -= index
    }
    return result
}

print(distributeCandies(7, 4)) // [1, 2, 3, 1]
print(distributeCandies(10, 3)) // [5, 2, 3]

