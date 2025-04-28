// 1652. Defuse the Bomb
// https://leetcode.com/problems/defuse-the-bomb/


import Foundation

func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    var result = Array(repeating: 0, count: code.count)
    if k == 0 { return result }
    for i in 0..<code.count {
        var sum = 0
        if k > 0 {
            for j in (i + 1)...(i + k) {
                sum += code[j % code.count]
            }
        } else {
            for j in (i + k)...(i - 1) {
                sum += code[(code.count + j) % code.count]
            }
        }
        result[i] = sum
    }
    return result
}

print(decrypt([5, 7, 1, 4], 3)) // [12, 10, 16, 13]
print(decrypt([1, 2, 3, 4], 0)) // [0, 0, 0, 0]
print(decrypt([2, 4, 9, 3], -2)) // [12, 5, 6, 13]
