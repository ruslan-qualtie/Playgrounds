// 461. Hamming Distance
// https://leetcode.com/problems/hamming-distance/

import Foundation

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    (x ^ y).nonzeroBitCount
}


print(hammingDistance(1, 4)) // 2
print(hammingDistance(3, 1)) // 1
