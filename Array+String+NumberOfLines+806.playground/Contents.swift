// 806. Number of Lines To Write String
// https://leetcode.com/problems/number-of-lines-to-write-string/

import Foundation

func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
    var line = 0, lines = 1
    for char in s {
        let i = Int(char.asciiValue! - 97)
        line += widths[i]
        if line > 100 {
            lines += 1
            line = widths[i]
        }
    }
    return [lines, line]
}

print(
    numberOfLines(
        [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
        "abcdefghijklmnopqrstuvwxyz"
                 )
) // [3, 60]
print(
    numberOfLines(
        [4,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10],
        "bbbcccdddaaa"
                 )
) // [2, 4]
