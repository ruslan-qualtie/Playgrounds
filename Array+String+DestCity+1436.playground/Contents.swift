// 1436. Destination City
// https://leetcode.com/problems/destination-city/

import Foundation

func destCity(_ paths: [[String]]) -> String {
    var freq = [String: Int](), result = ""
    for path in paths {
        freq[path[0], default: 0] -= 1
        freq[path[1], default: 0] += 1
    }
    for (k, v) in freq {
        if v == 1 {
            result = k
            break
        }
    }
    return result
}

print(destCity([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]])) // "Sao Paulo"
print(destCity([["B","C"],["D","B"],["C","A"]])) // "A"
print(destCity([["A","Z"]])) // "Z"
