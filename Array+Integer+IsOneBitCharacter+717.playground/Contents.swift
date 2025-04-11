// 717. 1-bit and 2-bit Characters
//

import Foundation

func isOneBitCharacter(_ bits: [Int]) -> Bool {
    var p = 0, step = 0
    while p < bits.count {
        step = bits[p] == 1 ? 2 : 1
        p += step
    }
    return step == 1
}

print(isOneBitCharacter([1,0,0])) // true
print(isOneBitCharacter([1,1,1,0])) // false

