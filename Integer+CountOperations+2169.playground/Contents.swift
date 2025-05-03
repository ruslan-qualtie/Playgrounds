// 2169. Count Operations to Obtain Zero
// https://leetcode.com/problems/count-operations-to-obtain-zero/

import Foundation

func countOperations(_ num1: Int, _ num2: Int) -> Int {
    var num1 = num1, num2 = num2, count = 0
    while num1 > 0 && num2 > 0 {
        if num1 >= num2 {
            num1 -= num2
        } else {
            num2 -= num1
        }
        count += 1
    }
    return count
}

print(countOperations(2, 3)) // 3
print(countOperations(10, 10)) // 1
