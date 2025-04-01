import Foundation

func request1(completion: @escaping @Sendable () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completion()
    }
}

func request2(completion: @escaping @Sendable () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
        completion()
    }
}

func request3(completion: @escaping @Sendable () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
        completion()
    }
}

let group = DispatchGroup()

group.enter()

request1 {
    print("Request 1 completed")
    group.leave()
}

group.enter()
request2 {
    print("Request 2 completed")
    group.leave()
}

group.enter()
request3 {
    print("Request 3 completed")
    group.leave()
}

group.notify(queue: .main) {
    print("All requests completed")
}
