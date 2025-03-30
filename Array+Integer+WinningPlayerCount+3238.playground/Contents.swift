// 3238. Find the Number of Winning Players
// https://leetcode.com/problems/find-the-number-of-winning-players/

import Foundation

func winningPlayerCount(_ n: Int, _ pick: [[Int]]) -> Int {
    var players = Array(repeating: [Int:Int](), count: n), win = 0
    for p in pick {
        players[p[0]][p[1], default: 0] += 1
    }
    for i in 0..<n {
        for (_, value) in players[i] {
            if value > i {
                win += 1
                break
            }
        }
    }
    return win
}

print(winningPlayerCount(4, [[0, 0], [1, 0], [1, 0], [2, 1], [2, 1], [2, 0]])) // 2
print(winningPlayerCount(5, [[1, 1], [1, 2], [1, 3], [1, 4]])) // 0
print(winningPlayerCount(5, [[1, 1], [2, 4], [2, 4], [2,4]])) // 1

