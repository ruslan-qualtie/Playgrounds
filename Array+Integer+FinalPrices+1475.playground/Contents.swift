// 1475. Final Prices With a Special Discount in a Shop
// https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/


import Foundation

func finalPrices(_ prices: [Int]) -> [Int] {
    var disc = Array(repeating: 0, count: prices.count), stack = [Int]()
    for i in (0..<prices.count).reversed() {
        while !stack.isEmpty && stack.last! > prices[i] {
            stack.removeLast()
        }
        if !stack.isEmpty {
            disc[i] = stack.last!
        } else {
            disc[i] = 0
        }
        stack.append(prices[i])
    }
    return zip(prices, disc).map { $0 - $1 }
}

print(finalPrices([8, 4, 6, 2, 3])) // [4, 2, 4, 2, 3]
print(finalPrices([1, 2, 3, 4, 5])) // [1, 2, 3, 4, 5]
print(finalPrices([10, 1, 1, 6])) // [9, 0, 1, 6]
