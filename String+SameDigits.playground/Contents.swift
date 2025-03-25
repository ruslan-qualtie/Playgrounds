// 3461. Check If Digits Are Equal in String After Operations I
// https://leetcode.com/problems/check-if-digits-are-equal-in-string-after-operations-i/

import Foundation

func hasSameDigits(_ s: String) -> Bool {
    var digits = s.compactMap(\.wholeNumberValue)
    while digits.count > 2 {
        digits = digitsSum(digits)
    }
    return digits[0] == digits[1]
}

private func digitsSum(_ digits: [Int]) -> [Int] {
    var result = [Int]()
    for i in 0..<digits.count - 1 {
        result.append((digits[i] + digits[i + 1]) % 10)
    }
    return result
}

print(hasSameDigits("3902")) // true
print(hasSameDigits("34789")) // false
