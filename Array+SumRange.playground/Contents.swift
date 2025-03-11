import Foundation

class NumArray {
    private let nums: [Int]
    private var prefixSum: [Int] = []

    init(_ nums: [Int]) {
        self.nums = nums
        self.prefixSum = [0] + nums
        for i in 1..<prefixSum.count {
            prefixSum[i] += prefixSum[i - 1]
        }
        
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum = 0
        for i in (left...right) {
            sum += nums[i]
        }
        return sum
    }
    
    func sumRange2(_ left: Int, _ right: Int) -> Int {
        prefixSum[right + 1] - prefixSum[left]
    }
}

let array = NumArray([-2, 0, 3, -5, 2, -1])
print(array.sumRange(0, 2)) // 1
print(array.sumRange(2, 5)) // -1
print(array.sumRange(0, 5)) // -3
print(array.sumRange2(0, 2)) // 1
print(array.sumRange2(2, 5)) // -1
print(array.sumRange2(0, 5)) // -3
