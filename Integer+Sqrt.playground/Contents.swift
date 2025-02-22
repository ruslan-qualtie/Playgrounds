import Foundation

func mySqrt(_ x: Int) -> Int {
    if x == 0 { return 0 }
    if x < 4 { return 1 }
    var low = 2
    var high = x
    while low < high {
        let mid = (low + high) / 2
        print(low, mid, high)
        let prod = mid * mid
        if prod > x {
            high = mid - 1
        } else if prod < x {
            low = mid + 1
        } else {
            return mid
        }
        print(low, mid, high)
    }
    return low * low > x ? low - 1 : low
}

mySqrt(10)
