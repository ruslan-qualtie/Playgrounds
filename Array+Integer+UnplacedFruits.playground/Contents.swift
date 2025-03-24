// 3477. Fruits Into Baskets II
// https://leetcode.com/problems/fruits-into-baskets-ii/

import Foundation

func numOfUnplacedFruits(_ fruits: [Int], _ baskets: [Int]) -> Int {
    var baskets = baskets
    for fruit in fruits {
        for i in 0..<baskets.count {
            if fruit <= baskets[i] {
                baskets[i] = -1
                break
            }
        }
    }
    return baskets.filter { $0 > 0 }.count
}

print(numOfUnplacedFruits([4,2,5], [3,5,4])) // 1
print(numOfUnplacedFruits([3,6,1], [6,4,7])) // 0
