// 3483. Unique 3-Digit Even Numbers
// https://leetcode.com/problems/unique-3-digit-even-numbers/

import Foundation

func totalNumbers(_ digits: [Int]) -> Int {
    var result = Set<Int>()
    for i in 0..<digits.count {
        if digits[i] % 2 != 0 { continue }
        for j in 0..<digits.count {
            if j == i { continue }
            for k in 0..<digits.count {
                if k == i || k == j || digits[k] == 0 { continue }
                result.insert(digits[k] * 100 + digits[j] * 10 + digits[i])
            }
        }
    }
    return result.count
}

print(totalNumbers([2, 1, 3, 0]))     // 10
print(totalNumbers([2, 2, 8, 8, 2]))  // 7
print(totalNumbers([3, 7, 5]))        // 0
