// 2194. Cells in a Range on an Excel Sheet
// https://leetcode.com/problems/cells-in-a-range-on-an-excel-sheet/

import Foundation

func cellsInRange(_ s: String) -> [String] {
    let ab = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map{$0}, sarr = Array(s)
    var result = [String]()
    for i in (ab.firstIndex(of: sarr[0])!)...(ab.firstIndex(of: sarr[3])!) {
        for j in sarr[1].wholeNumberValue!...sarr[4].wholeNumberValue! {
            result.append("\(ab[i])\(j)")
        }
    }
    return result
}

print(cellsInRange("K1:L2")) // ["K1","K2","L1","L2"]
print(cellsInRange("A1:F1")) // ["A1","B1","C1","D1","E1","F1"]
