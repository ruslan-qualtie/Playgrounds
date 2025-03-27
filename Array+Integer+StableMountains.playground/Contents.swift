// 3285. Find Indices of Stable Mountains
// https://leetcode.com/problems/find-indices-of-stable-mountains/

import Foundation

func stableMountains(_ height: [Int], _ threshold: Int) -> [Int] {
    var result = [Int]()
    for i in 1..<height.count {
        if height[i - 1] > threshold && height[i] > 0 {
            result.append(i)
        }
    }
    return result
}

print(stableMountains([1, 2, 3, 4, 5], 2)) // [3, 4]
print(stableMountains([10,1,10,1,10], 3))  // [1, 3]
print(stableMountains([10,1,10,1,10], 10)) // []
