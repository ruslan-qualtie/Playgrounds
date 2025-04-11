// 728. Self Dividing Numbers
// https://leetcode.com/problems/self-dividing-numbers/

import Foundation

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var result = [Int]()
    for i in left...right {
        var n = i, satisfy = true
        while n > 0 {
            let digit = n % 10
            if digit == 0 || i % digit != 0 {
                n = 0
                satisfy = false
            }
            n /= 10
        }
        if satisfy {
            result.append(i)
        }
    }
    return result
}

print(selfDividingNumbers(1, 22)) // [1,2,3,4,5,6,7,8,9,11,12,15,22]
print(selfDividingNumbers(47, 85)) // [48,55,66,77]
