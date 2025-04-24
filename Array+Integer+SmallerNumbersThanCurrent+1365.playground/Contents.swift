// 1365. How Many Numbers Are Smaller Than the Current Number
// https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

import Foundation

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    let map = nums.sorted()
    var result = [Int]()
    for num in nums {
        result.append(map.firstIndex(of: num)!)
    }
    return result
}

print(smallerNumbersThanCurrent([8, 1, 2, 2, 3])) // [4, 0, 1, 1, 3]
print(smallerNumbersThanCurrent([6, 5, 4, 8])) // [2, 1, 0, 3]
print(smallerNumbersThanCurrent([7, 7, 7, 7])) // [0, 0, 0, 0]
