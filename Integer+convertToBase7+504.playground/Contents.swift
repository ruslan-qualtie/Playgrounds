// 504. Base 7
// https://leetcode.com/problems/base-7/

import Foundation

func convertToBase7(_ num: Int) -> String {
    if num == 0 { return "0" }
    var num = num, result = "", sign = ""
    if num < 0 {
        sign = "-"
        num *= -1
    }
    while num > 0 {
        result = "\(num % 7)" + result
        num /= 7
    }
    return sign + result
}

print(convertToBase7(100)) // 202
print(convertToBase7(-8))  // -11
