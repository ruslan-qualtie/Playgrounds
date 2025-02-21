import Foundation

private func numToArray(_ k: Int) -> [Int] {
    var k = k
    var result = [Int]()
    while k > 0 {
        result.append(k % 10)
        k /= 10
    }
    return Array(result.reversed())
}

print(numToArray(54321))
