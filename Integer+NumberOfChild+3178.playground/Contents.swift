// 3178. Find the Child Who Has the Ball After K Seconds
// https://leetcode.com/problems/find-the-child-who-has-the-ball-after-k-seconds/

import Foundation

func numberOfChild(_ n: Int, _ k: Int) -> Int {
    var pointer = 0, reverse = true
    for i in 1...k {
        if pointer == 0 || pointer == n - 1 {
            reverse = !reverse
        }
        if reverse {
            pointer -= 1
        } else {
            pointer += 1
        }
    }
    return pointer
}

func numberOfChild2(_ n: Int, _ k: Int) -> Int {
    let period = 2 * (n - 1)
    let positionInPeriod = k % period
    return positionInPeriod < n ? positionInPeriod : period - positionInPeriod
}

print(numberOfChild(3, 5)) // 1
print(numberOfChild(5, 6)) // 2
print(numberOfChild(4, 2)) // 2

print(numberOfChild2(3, 5)) // 1
print(numberOfChild2(5, 6)) // 2
print(numberOfChild2(4, 2)) // 2
