import Foundation

class KthLargest {
    private let k: Int
    private var minHeap: [Int]

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        minHeap = .init()

        for num in nums {
            add(num)
        }
    }
    
    func add(_ val: Int) -> Int {
        if minHeap.count < k {
            minHeap.append(val)
            minHeap.sort()
        } else if val > minHeap.first! {
            minHeap.removeFirst()
            minHeap.append(val)
            minHeap.sort()
        }
        return minHeap.first!
    }
}

let queue = KthLargest(3, [4, 5, 8, 2])
print(queue.add(3)) // 4
print(queue.add(5)) // 5
print(queue.add(10))// 5
print(queue.add(9)) // 8
print(queue.add(4)) // 8
