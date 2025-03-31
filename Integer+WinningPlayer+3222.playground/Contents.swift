// 3222. Find the Winning Player in Coin Game
// https://leetcode.com/problems/find-the-winning-player-in-coin-game/

import Foundation

func winningPlayer(_ x: Int, _ y: Int) -> String {
    min(x, y / 4) % 2 == 0 ? "Bob" : "Alice"
}

print(winningPlayer(2, 7)) // Alice
print(winningPlayer(4, 11)) // Bob
