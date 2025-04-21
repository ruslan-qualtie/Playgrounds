import Foundation

func isWinner(_ player1: [Int], _ player2: [Int]) -> Int {
    let s1 = score(player1), s2 = score(player2)
    if s1 > s2 {
        return 1
    } else if s1 < s2 {
        return 2
    } else {
        return 0
    }
}

private func score(_ p: [Int]) -> Int {
    var x2 = 0, score = 0
    for num in p {
        score += num
        if x2 > 0 {
            score += num
            x2 -= 1
        }
        if num == 10 {
            x2 = 2
        }
    }
    return score
}

print(isWinner([5, 10, 3, 2], [6, 5, 7, 3])) // 1
print(isWinner([3, 5, 7, 6], [8, 10, 10, 2])) // 2
print(isWinner([2, 3], [1, 4])) // 0
print(isWinner([1, 1, 1, 10, 10, 10, 10], [10, 10, 10, 10, 1, 1, 1])) // 2
print(isWinner([3, 6, 10, 8], [9, 9, 9, 9])) // 2
