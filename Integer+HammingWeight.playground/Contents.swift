import Foundation

func hammingWeight(_ n: Int) -> Int {
    var n = n
    var result = 0
    while n > 0 {
        let bit = n % 2
        print(bit)
        result += bit
        n >>= 1
    }
    return result
}

print("HW:", hammingWeight(128))

print("HW:", hammingWeight(2147483645))
