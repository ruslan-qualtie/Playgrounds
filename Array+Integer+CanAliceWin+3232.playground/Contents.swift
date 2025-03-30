// 3232. Find if Digit Game Can Be Won
// https://leetcode.com/problems/find-if-digit-game-can-be-won/

import Foundation

func canAliceWin(_ nums: [Int]) -> Bool {
    var single = 0, double = 0
    for num in nums {
        if num < 10 {
            single += num
        } else {
            double += num
        }
    }
    return single != double
}

print(canAliceWin([1, 2, 3, 4, 10])) // false
print(canAliceWin([1, 2, 3, 4, 5, 14])) // true
print(canAliceWin([5, 5, 5, 25])) // true
