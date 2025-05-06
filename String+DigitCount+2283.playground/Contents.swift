// 2283. Check if Number Has Equal Digit Count and Digit Value
// https://leetcode.com/problems/check-if-number-has-equal-digit-count-and-digit-value/

import Foundation

func digitCount(_ num: String) -> Bool {
    var freq = [Int: Int](), digits = num.map { $0.wholeNumberValue! }
    for digit in digits {
        freq[digit, default: 0] += 1
    }
    for i in 0..<digits.count {
        if digits[i] != freq[i] ?? 0 {
            return false
        }
    }
    return true
}

print(digitCount("1210")) // true
print(digitCount("030")) // false
