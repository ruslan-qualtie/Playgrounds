import Foundation

private func reverseBits(_ n: Int) -> Int {
    var n = n
    var result = 0
    (0..<32).forEach { _ in
        result <<= 1
        result += n & 1
        print("bit:", n & 1)
        n >>= 1
        print("n:", n, "result:", result)
    }
    return result
}

print(reverseBits(43261596))

print(reverseBits(4294967293))
