import Foundation

func isHappy(_ n: Int) -> Bool {
    var slow = n
    var fast = digitsSquareSum(n)
    print("start", slow, fast)
    while fast != 1 && slow != fast {
        slow = digitsSquareSum(slow)
        fast = digitsSquareSum(digitsSquareSum(fast))
        print("step", slow, fast)
    }
    return fast == 1
}

private func digitsSquareSum(_ n: Int) -> Int {
    var sum = 0, num = n
    while num != 0 {
        let digit = num % 10
        sum += digit * digit
        num /= 10
    }
    return sum
}

print("result of 19:", isHappy(19))

print("result of 19:", isHappy(18))
