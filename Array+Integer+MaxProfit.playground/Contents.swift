import Foundation

func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = prices[0], maxProfit = 0
    for price in prices {
        minPrice = min(price, minPrice)
        maxProfit = max(maxProfit, price - minPrice)
    }
    return maxProfit
}

print(maxProfit([7,1,5,3,6,4])) // 5
