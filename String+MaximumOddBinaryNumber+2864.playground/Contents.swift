// 2864. Maximum Odd Binary Number
// https://leetcode.com/problems/maximum-odd-binary-number/

import Foundation

func maximumOddBinaryNumber(_ s: String) -> String {
    var sarr = Array(s).sorted(by: >)
    let last = sarr.removeFirst()
    sarr.append(last)
    return String(sarr)
}

print(maximumOddBinaryNumber("010")) // "001"
print(maximumOddBinaryNumber("0101")) // "1001"
