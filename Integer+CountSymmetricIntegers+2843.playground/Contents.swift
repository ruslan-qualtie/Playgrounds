// 2843. Count Symmetric Integers
// https://leetcode.com/problems/count-symmetric-integers/

import Foundation

func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
    var count = 0
    for i in low...high {
        var digits = [Int](), n = i
        while n > 0 {
            digits.append(n % 10)
            n /= 10
        }
        if digits.count % 2 == 1 { continue }
        if digits.count == 2 {
            if digits[0] == digits[1] {
                count += 1
            }
        } else if digits.count == 4 {
            if digits[0] + digits[1] == digits[2] + digits[3] {
                count += 1
            }
        }
    }
    return count
}

print(countSymmetricIntegers(1, 100)) // 9
print(countSymmetricIntegers(1200, 1230)) // 4
