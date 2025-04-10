// 598. Range Addition II
// https://leetcode.com/problems/range-addition-ii/

import Foundation

func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
    var m = m, n = n
    for op in ops {
        m = min(m, op[0])
        n = min(n, op[1])
    }
    return m * n
}

print(maxCount(3, 3, [[2, 2], [3, 3]])) // 4
print(maxCount(3, 3, [[1, 1], [3, 3]])) // 1
print(maxCount(3, 3, [])) // 9
