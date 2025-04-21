// 2651. Calculate Delayed Arrival Time
// https://leetcode.com/problems/calculate-delayed-arrival-time/

import Foundation

func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
    (arrivalTime + delayedTime) % 24
}

print(findDelayedArrivalTime(5, 15)) // 20
print(findDelayedArrivalTime(13, 11)) // 0
