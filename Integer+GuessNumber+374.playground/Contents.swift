// 374. Guess Number Higher or Lower
// https://leetcode.com/problems/guess-number-higher-or-lower/

import Foundation

var pick: Int = 0

private func guess(_ n: Int) -> Int {
    if pick == n {
        return 0
    } else if pick > n {
        return 1
    } else {
        return -1
    }
}

func guessNumber(_ n: Int) -> Int {
    var low = 1
    var high = n

    while(low < high) {
        let mid = (high + low) / 2
        let result = guess(mid)
        if result == 0 {
            return mid
        } else if result == -1 {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return low
}
pick = 6
print(guessNumber(10)) // 6
pick = 1
print(guessNumber(1)) // 1
pick = 1
print(guessNumber(2)) // 1
