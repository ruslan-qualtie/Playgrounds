// 2315. Count Asterisks
// https://leetcode.com/problems/count-asterisks/

import Foundation

func countAsterisks(_ s: String) -> Int {
    var ast = 0, count = 0
    for char in s {
        if char == "|" {
            count += 1
        } else if char == "*" && count % 2 == 0 {
            ast += 1
        }
    }
    return ast
}

print(countAsterisks("l|*e*et|c**o|*de|")) // 2
print(countAsterisks("iamprogrammer")) // 0
print(countAsterisks("yo|uar|e**|b|e***au|tifu|l")) // 5
