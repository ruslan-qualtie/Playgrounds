// 1304. Find N Unique Integers Sum up to Zero
// https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

import Foundation

func sumZero(_ n: Int) -> [Int] {
    var result = [Int]()
    if n % 2 == 1 { result.append(0) }
    if n == 1 { return result }
    for i in 1...(n / 2) {
        result.append(-i)
        result.append(i)
    }
    return result
}

print(sumZero(5)) // [0,-1,1,-2,2]
print(sumZero(3)) // [0,-1,1]
print(sumZero(1)) // [0]
