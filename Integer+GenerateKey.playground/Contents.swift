// 3270. Find the Key of the Numbers
// https://leetcode.com/problems/find-the-key-of-the-numbers/

import Foundation

func generateKey(_ num1: Int, _ num2: Int, _ num3: Int) -> Int {
    let n1 = numToArray(num1), n2 = numToArray(num2), n3 = numToArray(num3)
    var res = [Int]()
    for i in 0..<4 {
        res.append(min(n1[i], n2[i], n3[i]))
    }
    return 1000 * res[3] + 100 * res[2] + 10 * res[1] + res[0]
}

private func numToArray(_ num: Int) -> [Int] {
    var num = num, result = [Int]()
    while result.count < 4 {
        if num > 0 {
            result.append(num % 10)
            num /= 10
        } else {
            result.append(0)
        }
    }
    return result
}

print(numToArray(1))    // [1, 0, 0, 0]
print(numToArray(10))   // [0, 1, 0, 0]
print(numToArray(100))  // [0, 0, 1, 0]
print(numToArray(1000)) // [0, 0, 0, 1]

print(generateKey(1, 10, 1000))   // 0
print(generateKey(987, 879, 798)) // 777
print(generateKey(1, 2, 3))       // 1
