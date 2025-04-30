// 2960. Count Tested Devices After Test Operations
// https://leetcode.com/problems/count-tested-devices-after-test-operations/

import Foundation

func countTestedDevices(_ batteryPercentages: [Int]) -> Int {
    var dev = 0
    for b in batteryPercentages {
        if b - dev > 0 {
            dev += 1
        }
    }
    return dev
}

print(countTestedDevices([1, 1, 2, 1, 3])) // 3
print(countTestedDevices([0, 1, 2])) // 2

