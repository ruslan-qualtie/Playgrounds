// 645. Set Mismatch
// https://leetcode.com/problems/set-mismatch/

import Foundation

func findErrorNums(_ nums: [Int]) -> [Int] {
    let asum = ((nums.count + 1) * nums.count) / 2
    var freq = [Int: Int](), sum = 0, d = 0
    for num in nums {
        sum += num
        freq[num, default: 0] += 1
        if freq[num]! == 2 {
            d = num
        }
    }
    return [d, asum - sum + d ]
}

print(findErrorNums([1, 2, 2, 4])) // [2, 3]
print(findErrorNums([1, 1])) // [1, 2]
