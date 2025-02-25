import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var appears = Set<Int>()
    for num in nums {
        if appears.contains(num) {
            return true
        }
        appears.insert(num)
    }
    return false
}

print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
