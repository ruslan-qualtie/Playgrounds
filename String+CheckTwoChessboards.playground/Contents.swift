// 3274. Check if Two Chessboard Squares Have the Same Color
// https://leetcode.com/problems/check-if-two-chessboard-squares-have-the-same-color/

import Foundation

func checkTwoChessboards(_ coordinate1: String, _ coordinate2: String) -> Bool {
    let rows: [Character: Int] = ["1": 1, "2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8]
    let cols: [Character: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
    let coor1 = Array(coordinate1)
    let coor2 = Array(coordinate2)
    return (cols[coor1[0]]! + rows[coor1[1]]!) % 2 == (cols[coor2[0]]! + rows[coor2[1]]!) % 2
}

print(checkTwoChessboards("a1", "c3")) // true
print(checkTwoChessboards("a1", "h3")) // false
