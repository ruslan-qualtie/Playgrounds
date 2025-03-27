// 3300. Minimum Element After Replacement With Digit Sum
// https://leetcode.com/problems/minimum-element-after-replacement-with-digit-sum/

import Foundation

func minElement(_ nums: [Int]) -> Int {
    var result = digitsSum(nums[0])
    if nums.count == 1 { return result }
    for i in 1..<nums.count {
        result = min(result, digitsSum(nums[i]))
    }
    return result
}

private func digitsSum(_ num: Int) -> Int {
    var num = num, sum = 0
    while num > 0 {
        sum += num % 10
        num /= 10
    }
    return sum
}

print(digitsSum(2))   // 2
print(digitsSum(23))  // 5
print(digitsSum(123)) // 6

print(minElement([10, 12, 13, 14])) // 1
print(minElement([1, 2, 3, 4]))     // 1
print(minElement([999, 19, 199]))   // 10
