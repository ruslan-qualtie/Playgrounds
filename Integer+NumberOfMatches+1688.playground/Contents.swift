// 1688. Count of Matches in Tournament
// https://leetcode.com/problems/count-of-matches-in-tournament/

import Foundation

func numberOfMatches(_ n: Int) -> Int {
    var n = n, matches = 0
    while n > 1 {
        if n % 2 == 0 {
            matches += n / 2
            n /= 2
        } else {
            matches += (n - 1) / 2
            n -= 1
            n /= 2
            n += 1
        }
    }
    return matches
}

print(numberOfMatches(7)) // 6
print(numberOfMatches(14)) // 13
