// 1837. Sum of Digits in Base K
// https://leetcode.com/problems/sum-of-digits-in-base-k/

import Foundation

func sumBase(_ n: Int, _ k: Int) -> Int {
    var sum = 0, n = n
    while n > 0 {
        sum += n % k
        n /= k
    }
    return sum
}

print(sumBase(34, 6)) // 9
print(sumBase(10, 10)) // 1
