// 2496. Maximum Value of a String in an Array
// https://leetcode.com/problems/maximum-value-of-a-string-in-an-array/

import Foundation

func maximumValue(_ strs: [String]) -> Int {
    var maxv = 0
    for str in strs {
        maxv = max(maxv, Int(str) ?? str.count)
    }
    return maxv
}

print(maximumValue(["alic3", "bob", "3", "4", "00000"])) // 5
print(maximumValue(["1", "01", "001", "0001"])) // 1
