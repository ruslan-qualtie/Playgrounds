// 1725. Number Of Rectangles That Can Form The Largest Square
// https://leetcode.com/problems/number-of-rectangles-that-can-form-the-largest-square/

import Foundation

func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
    var maxl = 0, count = 0
    for r in rectangles {
        let l = min(r[0], r[1])
        if l == maxl {
            count += 1
        } else if l > maxl {
            maxl = l
            count = 1
        }
    }
    return count
}

print(countGoodRectangles([[5, 8], [3, 9], [5, 12], [16, 5]])) // 3
print(countGoodRectangles([[2, 3], [3, 7], [4, 3], [3, 7]])) // 3
