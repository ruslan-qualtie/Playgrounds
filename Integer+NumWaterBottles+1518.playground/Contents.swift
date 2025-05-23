// 1518. Water Bottles
// https://leetcode.com/problems/water-bottles/

import Foundation

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var numBottles = numBottles, empty = 0, sum = 0
    while numBottles + empty >= numExchange {
        sum += numBottles
        empty += numBottles
        numBottles = empty / numExchange
        empty %= numExchange
    }
    return sum + numBottles
}

print(numWaterBottles(9, 3)) // 13
print(numWaterBottles(15, 4)) // 19
