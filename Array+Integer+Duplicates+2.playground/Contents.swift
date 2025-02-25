import Foundation

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var appears = [Int: Int]()
    for i in 0..<nums.count {
        if let index = appears[nums[i]] {
            if i - index <= k {
                return true
            }
        }
        appears[nums[i]] = i
    }
    return false
}

print(containsNearbyDuplicate([1,2,3,1,2,3], 3))
print(containsNearbyDuplicate([1,2,3,1,2,3], 2))
