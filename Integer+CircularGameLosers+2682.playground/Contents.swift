// 2682. Find the Losers of the Circular Game
// https://leetcode.com/problems/find-the-losers-of-the-circular-game/

import Foundation

func circularGameLosers(_ n: Int, _ k: Int) -> [Int] {
    var index = 0, round = 1, parr = Array(repeating: 0, count: n), result = [Int]()
    parr[0] = 1
    while parr[index] < 2 {
        index = (index + round * k) % n
        round += 1
        parr[index] += 1
    }
    for i in 0..<n {
        if parr[i] == 0 {
            result.append(i + 1)
        }
    }
    return result
}

print(circularGameLosers(5, 2)) // [4, 5]
print(circularGameLosers(4, 4)) // [2, 3, 4]

