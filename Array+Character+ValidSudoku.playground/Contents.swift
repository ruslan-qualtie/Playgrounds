// 36. Valid Sudoku
// https://leetcode.com/problems/valid-sudoku/

import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rows = Array(repeating: Set<Character>(), count: 9)
    var columns = Array(repeating: Set<Character>(), count: 9)
    var boxes = Array(repeating: Set<Character>(), count: 9)
    for row in 0..<9 {
        for column in 0..<9 {
            let char = board[row][column]
            if char == "." { continue }
            let boxIndex = (row / 3) * 3 + (column / 3)
            if rows[row].contains(char) || columns[column].contains(char) || boxes[boxIndex].contains(char)  {
                return false
            }
            rows[row].insert(char)
            columns[column].insert(char)
            boxes[boxIndex].insert(char)
        }
    }
    return true
}

let board1: [[Character]] = [
    ["5","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]

let board2: [[Character]] = [
    ["8","3",".",".","7",".",".",".","."],
    ["6",".",".","1","9","5",".",".","."],
    [".","9","8",".",".",".",".","6","."],
    ["8",".",".",".","6",".",".",".","3"],
    ["4",".",".","8",".","3",".",".","1"],
    ["7",".",".",".","2",".",".",".","6"],
    [".","6",".",".",".",".","2","8","."],
    [".",".",".","4","1","9",".",".","5"],
    [".",".",".",".","8",".",".","7","9"]
]

print(isValidSudoku(board1))
print(isValidSudoku(board2)) 
