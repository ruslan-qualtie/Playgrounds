// 2614. Prime In Diagonal
// https://leetcode.com/problems/prime-in-diagonal/

import Foundation

func diagonalPrime(_ nums: [[Int]]) -> Int {
    var ds = Set<Int>()
    for i in 0..<nums.count {
        ds.insert(nums[i][i])
        ds.insert(nums[i][nums.count - i - 1])
    }
    for num in Array(ds).sorted(by: >) {
        if isPrime(num) {
            return num
        }
    }
    return 0
}
private func isPrime(_ num: Int) -> Bool {
    if num == 1 { return false }
    if num < 4 { return true }
    for i in 2...(num / 2) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

print(diagonalPrime([[1, 2, 3], [5, 6, 7], [9, 10, 11]])) // 11
print(diagonalPrime([[1, 2, 3], [5, 17, 7], [9, 11, 10]])) // 17
