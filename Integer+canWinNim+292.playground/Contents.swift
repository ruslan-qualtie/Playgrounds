// 292. Nim Game
// https://leetcode.com/problems/nim-game/

import Foundation

func canWinNim(_ n: Int) -> Bool {
    n % 4 != 0
}

print(canWinNim(4)) // false
print(canWinNim(1)) // true
print(canWinNim(2)) // true
