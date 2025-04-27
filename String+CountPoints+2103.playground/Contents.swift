// 2103. Rings and Rods
// https://leetcode.com/problems/rings-and-rods/

import Foundation

func countPoints(_ rings: String) -> Int {
    var rods = Array(repeating: 0, count: 10), rarr = Array(rings), count = 0
    for i in stride(from: 0, to: rarr.count, by: 2) {
        let color = rarr[i]
        let index = rarr[i + 1].wholeNumberValue!
        if color == "R" {
            rods[index] |= 1
        } else if color == "G" {
            rods[index] |= 2
        } else {
            rods[index] |= 4
        }
    }
    for rod in rods {
        if rod == 7 {
            count += 1
        }
    }
    return count
}

print(countPoints("B0B6G0R6R0R6G9")) // 1
print(countPoints("B0R0G0R9R0B0G0")) // 1
print(countPoints("G4")) // 0
