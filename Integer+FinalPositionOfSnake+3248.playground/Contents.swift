// 3248. Snake in Matrix
// https://leetcode.com/problems/snake-in-matrix/

import Foundation

func finalPositionOfSnake(_ n: Int, _ commands: [String]) -> Int {
    var pos = 0
    for com in commands {
        if com == "UP" { pos -= n }
        else if com == "DOWN" { pos += n }
        else if com == "LEFT" { pos -= 1 }
        else if com == "RIGHT" { pos += 1 }
    }
    return pos
}
