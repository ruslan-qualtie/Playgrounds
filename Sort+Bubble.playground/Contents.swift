import Foundation

private func bubbleSort(_ array: [Int]) -> [Int] {
    let n = array.count
    var array = array
    print("Initial: \(array)")
    for i in 0..<n {
        for j in 0..<n - i - 1 {
            if array[j] > array[j + 1] {
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
            print("Step \(i + 1)/\(j + 1): \(array)")
        }
    }
    print("Final: \(array)")
    return array
}

bubbleSort([5, 4, 3, 2, 1])
