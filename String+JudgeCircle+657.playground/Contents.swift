// 657. Robot Return to Origin
// https://leetcode.com/problems/robot-return-to-origin/

import Foundation

func judgeCircle(_ moves: String) -> Bool {
    var x = 0, y = 0
    for move in moves {
        switch move {
            case "U" : y += 1
            case "D" : y -= 1
            case "L" : x -= 1
            default: x += 1
        }
    }
    return x == 0 && y == 0
}

print(judgeCircle("UD")) // true
print(judgeCircle("LL")) // false
