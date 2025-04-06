// 3079. Find the Sum of Encrypted Integers
// https://leetcode.com/problems/find-the-sum-of-encrypted-integers/

import Foundation

func sumOfEncryptedInt(_ nums: [Int]) -> Int {
    var sum = 0
    for num in nums {
        sum += encrypt(num)
    }
    return sum
}
private func encrypt(_ num: Int) -> Int {
    if num < 10 { return num }
    var n = num, digits = [Int](), mult = 1, result = 0
    while n > 0 {
        digits.append(n % 10)
        n /= 10
    }
    let maxd = digits.max()!
    for i in 0..<digits.count {
        result += maxd * mult
        mult *= 10
    }
    return result
}

print(sumOfEncryptedInt([1, 2, 3])) // 6
print(sumOfEncryptedInt([10, 21, 31])) // 66

