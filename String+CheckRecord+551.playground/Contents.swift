// 551. Student Attendance Record I
// https://leetcode.com/problems/student-attendance-record-i/

import Foundation

func checkRecord(_ s: String) -> Bool {
    var absent = 0, late = 0
    for char in s {
        if char == "A" {
            absent += 1
            late = 0
            if absent == 2 {
                return false
            }
        } else if char == "L" {
            late += 1
            if late == 3 {
                return false
            }
        } else {
            late = 0
        }
    }
    return true
}

print(checkRecord("PPALLP")) // true
print(checkRecord("PPALLL")) // false

