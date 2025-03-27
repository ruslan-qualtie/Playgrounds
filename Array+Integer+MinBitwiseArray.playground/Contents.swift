// 3314. Construct the Minimum Bitwise Array I
// https://leetcode.com/problems/construct-the-minimum-bitwise-array-i/

import Foundation

func minBitwiseArray(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    for num in nums {
        var found = false
        for i in 0...num {
            if i | (i + 1) == num {
                result.append(i)
                found = true
                break
            }
        }
        if !found {
            result.append(-1)
        }
    }
    return result
}

print(minBitwiseArray([2, 3, 5, 7])) // [-1, 1, 4, 3]
print(minBitwiseArray([11, 13, 31])) // [9, 12, 15]
