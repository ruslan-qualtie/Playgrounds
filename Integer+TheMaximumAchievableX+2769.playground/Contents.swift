// 2769. Find the Maximum Achievable Number
// https://leetcode.com/problems/find-the-maximum-achievable-number/

import Foundation

func theMaximumAchievableX(_ num: Int, _ t: Int) -> Int {
    num + 2 * t
}

print(theMaximumAchievableX(4, 1)) // 6
print(theMaximumAchievableX(3, 2)) // 7
