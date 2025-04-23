// 914. X of a Kind in a Deck of Cards
// https://leetcode.com/problems/x-of-a-kind-in-a-deck-of-cards/

import Foundation

func hasGroupsSizeX(_ deck: [Int]) -> Bool {
    var freq = [Int: Int]()
    for card in deck {
        freq[card, default: 0] += 1
    }
    let values = Array(freq.values)
    if values.count == 1 { return values[0] > 1 }
    var x = values[0]
    for i in 1..<values.count {
        x = gcd(x, values[i])
        if x == 1 {
            return false
        }
    }
    return true
}

private func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a, b = b
    if b == 0 { return a }
    return gcd(b, a % b)
}

print(hasGroupsSizeX([1, 2, 3, 4, 4, 3, 2, 1])) // true
print(hasGroupsSizeX([1, 1, 1, 2, 2, 2, 3, 3])) // false

