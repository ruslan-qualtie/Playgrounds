// 3226. Number of Bit Changes to Make Two Integers Equal
// https://leetcode.com/problems/number-of-bit-changes-to-make-two-integers-equal/

import Foundation

func minChanges(_ n: Int, _ k: Int) -> Int {
    if n < k { return -1 }
    if n == k { return 0 }
    var n = n, k = k, diff = 0
    while n > 0 {
        let nb = n % 2, kb = k % 2
        if kb > nb {
            return -1
        } else if kb < nb {
            diff += 1
        }
        n /= 2
        k /= 2
    }
    return diff
}

print(minChanges(13, 4))  // 2
print(minChanges(21, 21)) // 0
print(minChanges(21, 22)) // -1
print(minChanges(14, 13)) // -1
