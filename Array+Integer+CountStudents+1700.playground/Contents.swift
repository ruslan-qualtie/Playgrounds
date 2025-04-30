// 1700. Number of Students Unable to Eat Lunch
// https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/

import Foundation

func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
    var count = [0, 0]
    for s in students {
        count[s] += 1
    }
    for s in sandwiches {
        if count[s] == 0 {
            break
        }
        count[s] -= 1
    }
    return count[0] + count[1]
}

print(countStudents([1, 1, 0, 0], [0, 1, 0, 1])) // 0
print(countStudents([1, 1, 1, 0, 0, 1], [1, 0, 0, 0, 1, 1])) // 3

