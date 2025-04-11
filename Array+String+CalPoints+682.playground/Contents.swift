// 682. Baseball Game
// https://leetcode.com/problems/baseball-game/

import Foundation

func calPoints(_ operations: [String]) -> Int {
    var scores = [Int]()
    for op in operations {
        switch op {
            case "C": scores.removeLast()
            case "D": scores.append(2 * scores.last!)
            case "+": scores.append(scores.last! + scores[scores.count - 2])
            default: scores.append(Int(op)!)
        }
    }
    return scores.reduce(0, +)
}

print(calPoints(["5", "2", "C", "D", "+"])) // 30
print(calPoints(["5", "-2", "4", "C", "D", "9", "+", "+"])) // 27
print(calPoints(["1", "C"])) // 0
