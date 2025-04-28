// 1812. Determine Color of a Chessboard Square
// https://leetcode.com/problems/determine-color-of-a-chessboard-square/

import Foundation

func squareIsWhite(_ coordinates: String) -> Bool {
    let first = Int(coordinates.first!.asciiValue! - 96)
    let last = coordinates.last!.wholeNumberValue!
    return (first + last) % 2 == 1
}

print(squareIsWhite("a1")) // false
print(squareIsWhite("h3")) // true
print(squareIsWhite("c7")) // false
