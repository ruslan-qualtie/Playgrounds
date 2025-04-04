// 3074. Apple Redistribution into Boxes
// https://leetcode.com/problems/apple-redistribution-into-boxes/

import Foundation

func minimumBoxes(_ apple: [Int], _ capacity: [Int]) -> Int {
    var a = apple.reduce(0, +), c = capacity.sorted(by: >), count = 0
    while a > 0 {
        a -= c[count]
        count += 1
    }
    return count
}

print(minimumBoxes([1, 3, 2], [4, 3, 1, 5, 2])) // 2
print(minimumBoxes([5, 5, 5], [2, 4, 2, 7])) // 4
