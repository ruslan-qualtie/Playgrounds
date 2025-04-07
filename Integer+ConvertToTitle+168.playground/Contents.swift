// 168. Excel Sheet Column Title
// https://leetcode.com/problems/excel-sheet-column-title/

import Foundation

func convertToTitle(_ columnNumber: Int) -> String {
    var res = "", num = columnNumber
    while num > 0 {
        num -= 1
        res = String(UnicodeScalar(num % 26 + 65)!) + res
        num /= 26
    }
    return res
}

print(convertToTitle(1))  // A
print(convertToTitle(28)) // AB
print(convertToTitle(701))// ZY

