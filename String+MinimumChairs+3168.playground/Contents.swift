// 3168. Minimum Number of Chairs in a Waiting Room
// https://leetcode.com/problems/minimum-number-of-chairs-in-a-waiting-room/

import Foundation

func minimumChairs(_ s: String) -> Int {
    var maxValue = 0, value = 0
    for char in s {
        if char == "E" {
            value += 1
            maxValue = max(maxValue, value)
        } else {
            if value != 0 {
                value -= 1
            }
        }
    }
    return maxValue
}

print(minimumChairs("EEEEEEE")) // 7
print(minimumChairs("ELELEEL")) // 2
print(minimumChairs("ELEELEELLL")) // 3
