// 2037. Minimum Number of Moves to Seat Everyone
// https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/

import Foundation

func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
    var moves = 0
    for (s, st) in zip(seats.sorted(), students.sorted()) {
        moves += abs(s - st)
    }
    return moves
}

print(minMovesToSeat([3, 1, 5], [2, 7, 4])) // 4
print(minMovesToSeat([4, 1, 5, 9], [1, 3, 2, 6])) // 7
print(minMovesToSeat([2, 2, 6, 6], [1, 3, 2, 6])) // 4
