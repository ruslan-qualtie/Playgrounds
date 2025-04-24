// 1678. Goal Parser Interpretation
// https://leetcode.com/problems/goal-parser-interpretation/

import Foundation

func interpret(_ command: String) -> String {
    var carr = Array(command), p = 0, result = ""
    while p < carr.count {
        if carr[p] == "G" {
            result += "G"
            p += 1
        } else {
            if carr[p + 1] == ")" {
                result += "o"
                p += 2
            } else {
                result += "al"
                p += 4
            }
        }
    }
    return result
}

print(interpret("G()(al)")) // "Goal"
print(interpret("G()()()()(al)")) // "Gooooal"
print(interpret("(al)G(al)()()G")) // "alGalooG"
