// 171. Excel Sheet Column Number
// https://leetcode.com/problems/excel-sheet-column-number/

import Foundation

func titleToNumber(_ columnTitle: String) -> Int {
    var result = 0, mult = 1
    for char in columnTitle.reversed() {
        let num = Int(char.asciiValue! - 64)
        result += num * mult
        mult *= 26
    }
    return result
}

print(titleToNumber("A")) // 1
print(titleToNumber("AB")) // 28
print(titleToNumber("ZY")) // 701
