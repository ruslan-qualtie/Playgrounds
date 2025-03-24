// 3492. Maximum Containers on a Ship
// https://leetcode.com/problems/maximum-containers-on-a-ship/

import Foundation

func maxContainers(_ n: Int, _ w: Int, _ maxWeight: Int) -> Int {
    min(maxWeight / w, n * n)
}

print(maxContainers(3, 2, 10))  // Вывод: 5 (можно загрузить 5 контейнеров)
print(maxContainers(4, 5, 50))  // Вывод: 10 (максимум по весу)
print(maxContainers(2, 3, 100)) // Вывод: 4 (максимум по количеству мест)
print(maxContainers(5, 4, 25))  // Вывод: 6 (по грузоподъёмности)
