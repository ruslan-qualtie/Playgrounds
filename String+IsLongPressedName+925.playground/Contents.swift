// 925. Long Pressed Name
// https://leetcode.com/problems/long-pressed-name/

import Foundation

func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var narr = Array(name), tarr = Array(typed), np = 0, tp = 0
    while tp < tarr.count {
        if np < narr.count && tarr[tp] == narr[np] {
            tp += 1
            np += 1
        } else if tp > 0 && tarr[tp] == tarr[tp - 1] {
            tp += 1
        } else {
            return false
        }
    }
    return np == narr.count
}

print(isLongPressedName("alex", "aaleex")) // true
print(isLongPressedName("saeed", "ssaaedd")) // false
print(isLongPressedName("vtkgn", "vttkgnn")) // true
print(isLongPressedName("a", "b")) // false
