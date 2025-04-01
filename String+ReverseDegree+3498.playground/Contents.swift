// 3498. Reverse Degree of a String
// https://leetcode.com/problems/reverse-degree-of-a-string/

import Foundation

func reverseDegree(_ s: String) -> Int {
    var sum = 0, sArr = Array(s)
    for i in 0..<sArr.count {
        sum += (26 - (Int(sArr[i].asciiValue!) - 97)) * (i + 1)
    }
    return sum
}

print(reverseDegree("abc")) // 148
print(reverseDegree("zaza")) // 160
