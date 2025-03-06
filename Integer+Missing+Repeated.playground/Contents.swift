import Foundation

let grid = [[9,1,7],[8,9,2],[3,4,6]]

func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
    var seem = [Int: Int](), sum = 0, repeated = 0, n = grid.count * grid.count
    grid.flatMap { $0 }.forEach { num in
        if seem[num] != nil {
            repeated = num
        }
        seem[num, default: 0] += 1
        sum += num
    }
    return [repeated, ((n * (n + 1)) / 2) - (sum - repeated)]
}

func findMissingAndRepeatedValues2(_ grid: [[Int]]) -> [Int] {
    var seem: Set<Int> = .init(), sum = 0, repeated = 0, n = grid.count * grid.count
    grid.flatMap { $0 }.forEach { num in
        if seem.contains(num) {
            repeated = num
        }
        sum += num
        seem.insert(num)
    }
    return [repeated, ((n * (n + 1)) / 2) - (sum - repeated)]
}

print(findMissingAndRepeatedValues(grid))

print(findMissingAndRepeatedValues2(grid))
