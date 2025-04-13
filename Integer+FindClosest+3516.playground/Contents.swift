// 3516. Find Closest Person
// https://leetcode.com/problems/find-closest-person/

import Foundation

func findClosest(_ x: Int, _ y: Int, _ z: Int) -> Int {
    let dx = abs(z - x), dy = abs(z - y)
    if dx < dy {
        return 1
    } else if dy < dx {
        return 2
    } else {
        return 0
    }
}

print(findClosest(2, 7, 4)) // 1
print(findClosest(2, 5, 6)) // 2
print(findClosest(1, 5, 3)) // 0
