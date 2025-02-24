import Foundation

private func digitsSquareSum(_ n: Int) -> Int {
    var sum = 0
    var num = n
    while num != 0 {
        let digit = num % 10
        sum += digit * digit
        num /= 10
    }
    return sum
}

print(digitsSquareSum(1))
print(digitsSquareSum(2))
print(digitsSquareSum(3))
print(digitsSquareSum(4))
print(digitsSquareSum(5))
print(digitsSquareSum(6))
print(digitsSquareSum(7))
print(digitsSquareSum(8))
print(digitsSquareSum(9))
print(digitsSquareSum(10))
