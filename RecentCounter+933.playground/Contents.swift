import Foundation

class RecentCounter {
    private var pings: [Int]
    init() {
        self.pings = []
    }
    
    func ping(_ t: Int) -> Int {
        pings.append(t)
        while let first = pings.first, first < t - 3000 {
            pings.removeFirst()
        }
        return pings.count
    }
}

let obj = RecentCounter()
print(obj.ping(1)) // 1
print(obj.ping(100)) // 2
print(obj.ping(3001)) // 3
print(obj.ping(3002)) // 3
