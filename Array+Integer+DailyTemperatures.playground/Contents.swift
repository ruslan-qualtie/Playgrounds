import Foundation

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: temperatures.count), stack = [Int]()
    for i in 0..<temperatures.count {
        while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
            let prevIndex = stack.removeLast()
            result[prevIndex] = i - prevIndex
        }
        stack.append(i)
    }
    return result
}

print(dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73])) // [1,1,4,2,1,1,0,0]

