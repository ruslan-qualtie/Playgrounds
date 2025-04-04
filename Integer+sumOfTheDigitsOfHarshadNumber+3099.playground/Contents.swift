// 3099. Harshad Number
// https://leetcode.com/problems/harshad-number/

import Foundation

func sumOfTheDigitsOfHarshadNumber(_ x: Int) -> Int {
    var n = x, sum = 0
    while n > 0 {
        sum += n % 10
        n /= 10
    }
    if x % sum == 0 {
        return sum
    }
    return -1
}

print(sumOfTheDigitsOfHarshadNumber(18)) // 9
print(sumOfTheDigitsOfHarshadNumber(23)) // -1
