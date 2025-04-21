// 2652. Sum Multiples
// https://leetcode.com/problems/sum-multiples/

import Foundation

func sumOfMultiples(_ n: Int) -> Int {
    var result = 0
    for i in 1...n where i % 3 == 0 || i % 5 == 0 || i % 7 == 0 {
        result += i
    }
    return result
}

print(sumOfMultiples(7)) // 21
print(sumOfMultiples(10)) // 40
print(sumOfMultiples(9)) // 30
