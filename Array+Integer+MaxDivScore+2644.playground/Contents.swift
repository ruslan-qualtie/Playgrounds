// 2644. Find the Maximum Divisibility Score
// https://leetcode.com/problems/find-the-maximum-divisibility-score/

import Foundation

func maxDivScore(_ nums: [Int], _ divisors: [Int]) -> Int {
    var hmap = [Int: Int](), divisors = Array(Set(divisors)), maxScore = 0, minDiv = divisors.min()!
    for num in nums {
        for divisor in divisors {
            if num % divisor == 0 {
                hmap[divisor, default: 0] += 1
                let score = hmap[divisor]!
                if score > maxScore {
                    maxScore = score
                    minDiv = divisor
                } else if score == maxScore {
                    minDiv = min(minDiv, divisor)
                }
            }
        }
    }
    return minDiv
}

print(maxDivScore([2, 9, 15, 50], [5, 3, 7, 2])) // 2
print(maxDivScore([4, 7, 9, 3, 9], [5, 2, 3])) // 3
print(maxDivScore([20, 14, 21, 10], [10, 16, 20])) // 10

