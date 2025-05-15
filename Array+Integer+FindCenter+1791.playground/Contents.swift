// 1791. Find Center of Star Graph
// https://leetcode.com/problems/find-center-of-star-graph/

import Foundation

func findCenter(_ edges: [[Int]]) -> Int {
    if edges[0][0] == edges[1][0] || edges[0][0] == edges[1][1] {
        return edges[0][0]
    }
    return edges[0][1]
}

print(findCenter([[1, 2], [2, 3], [2, 4]])) // 2
print(findCenter([[1, 2], [5, 1], [1, 3], [1, 4]])) // 1
