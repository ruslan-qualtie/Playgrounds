// 860. Lemonade Change
// https://leetcode.com/problems/lemonade-change/

import Foundation

func lemonadeChange(_ bills: [Int]) -> Bool {
    var pays = [5: 0, 10: 0]
    for bill in bills {
        if bill == 5 {
            pays[5]! += 1
        } else if bill == 10 {
            pays[10]! += 1
            if pays[5]! > 0 {
                pays[5]! -= 1
            } else {
                return false
            }
        } else {
            if pays[10]! > 0 && pays[5]! > 0 {
                pays[10]! -= 1
                pays[5]! -= 1
            } else if pays[5]! > 2 {
                pays[5]! -= 3
            } else {
                return false
            }
        }
    }
    return true
}

print(lemonadeChange([5, 5, 5, 10, 20])) // true
print(lemonadeChange([5, 5, 10, 10, 20])) // false
