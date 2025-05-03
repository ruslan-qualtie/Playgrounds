// 1945. Sum of Digits of String After Convert
// https://leetcode.com/problems/sum-of-digits-of-string-after-convert/

import Foundation

func getLucky(_ s: String, _ k: Int) -> Int {
    var sum = 0
    for char in s {
        sum += digSum(char)
    }
    if k == 1 { return sum }
    for _ in 2...k {
        var num = sum
        sum = 0
        while num > 0 {
            sum += num % 10
            num /= 10
        }
    }
    return sum
}
private func digSum(_ c: Character) -> Int {
    var n = Int(c.asciiValue! - 96)
    if n < 10 { return n }
    var sum = 0
    while n > 0 {
        sum += n % 10
        n /= 10
    }
    return sum
}

print(getLucky("iiii", 1)) // 36
print(getLucky("leetcode", 2)) // 6
print(getLucky("zbax", 2)) // 8
