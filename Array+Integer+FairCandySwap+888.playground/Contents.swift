// 888. Fair Candy Swap
// https://leetcode.com/problems/fair-candy-swap/


import Foundation

func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
    let at = aliceSizes.reduce(0, +), bt = bobSizes.reduce(0, +)
    var result = [Int]()
    for i in 0..<aliceSizes.count {
        let ac = aliceSizes[i]
        let need = (bt - at + 2 * ac) / 2
        if bobSizes.contains(need) {
            result = [ac, need]
            break
        }
    }
    return result
}

print(fairCandySwap([1, 1], [2, 2])) // [1, 2]
print(fairCandySwap([1, 2], [2, 3])) // [1, 2]
print(fairCandySwap([2], [1, 3])) // [2, 3]
