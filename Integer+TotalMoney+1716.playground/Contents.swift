// 1716. Calculate Money in Leetcode Bank
// https://leetcode.com/problems/calculate-money-in-leetcode-bank/

import Foundation

func totalMoney(_ n: Int) -> Int {
    var day = n % 7, week = n / 7, sum = 0
    if day > 0 {
        sum += sumTo(day) + day * week
    }
    if week > 0 {
        sum += sumTo(7) * week
        sum += 7 * sumTo(week - 1)
    }
    return sum
}

private func sumTo(_ n: Int) -> Int {
    (n + 1) * n / 2
}

print(totalMoney(4)) // 10
print(totalMoney(10)) // 37
print(totalMoney(20)) // 96
