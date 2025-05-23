// 2578. Split With Minimum Sum
// https://leetcode.com/problems/split-with-minimum-sum/

import Foundation

func splitNum(_ num: Int) -> Int {
    var num = num, digits = [Int](), sum = 0, mult = 1
    while num > 0 {
        digits.append(num % 10)
        num /= 10
    }
    digits.sort(by: >)
    for i in 0..<digits.count {
        sum += digits[i] * mult
        if i % 2 == 1 {
            mult *= 10
        }
    }
    return sum
}

print(splitNum(4325)) // 59
print(splitNum(687)) // 75
