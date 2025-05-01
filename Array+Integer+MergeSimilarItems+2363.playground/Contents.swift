// 2363. Merge Similar Items
// https://leetcode.com/problems/merge-similar-items/

import Foundation

func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
    var map = [Int: Int](), result = [[Int]]()
    for item in items1 {
        map[item[0], default: 0] += item[1]
    }
    for item in items2 {
        map[item[0], default: 0] += item[1]
    }
    let keys = map.keys.sorted()
    for key in keys {
        result.append([key, map[key]!])
    }
    return result
}

print(mergeSimilarItems([[1,1],[4,5],[3,8]],[[3,1],[1,5]])) // [[1,6],[3,9],[4,5]]
print(mergeSimilarItems([[1,1],[3,2],[2,3]],[[2,1],[3,2],[1,3]])) // [[1,4],[2,4],[3,4]]
print(mergeSimilarItems([[1,3],[2,2]],[[7,1],[2,2],[1,4]])) //[[1,7],[2,4],[7,1]]
