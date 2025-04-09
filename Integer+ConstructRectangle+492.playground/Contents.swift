// 492. Construct the Rectangle
// https://leetcode.com/problems/construct-the-rectangle/

import Foundation

func constructRectangle(_ area: Int) -> [Int] {
    var result = [area, 1]
    for w in 1...area where w * w <= area && area % w == 0 {
        result = [area / w, w]
    }
    return result
}

print(constructRectangle(4)) // [2, 2]
print(constructRectangle(37)) // [37, 1]
print(constructRectangle(122122)) // [427, 286]
