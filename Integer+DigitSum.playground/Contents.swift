import Foundation

private func digitsSum(_ n: Int) -> Int {
    var n = n
    var result = 0
    while n > 0 {
        result += n % 10
        n /= 10
    }
    return result
}

print(digitsSum(12345))

print(digitsSum(1000000000))
