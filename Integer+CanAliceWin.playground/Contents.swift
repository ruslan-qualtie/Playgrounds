// 3360. Stone Removal Game
// https://leetcode.com/problems/stone-removal-game/

import Foundation

func canAliceWin(_ n: Int) -> Bool {
    var turn = 10, alice = true, n = n
    while n >= 0 {
        n -= turn
        turn -= 1
        alice = !alice
    }
    return alice
}

print(canAliceWin(12)) // true
print(canAliceWin(1))  // false
