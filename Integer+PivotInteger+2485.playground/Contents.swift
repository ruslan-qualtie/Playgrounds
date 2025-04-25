import Foundation

func pivotInteger(_ n: Int) -> Int {
    var rsum = (n + 1) * n / 2, lsum = 0
    for x in 1...n {
        lsum += x
        if lsum == rsum {
            return x
        }
        rsum -= x
    }
    return -1
}

print(pivotInteger(8)) // 6
print(pivotInteger(1)) // 1
print(pivotInteger(4)) // -1
