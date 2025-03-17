import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    Set(nums).count != nums.count
}

print(containsDuplicate([1,2,3,1])) // true
print(containsDuplicate([1,2,3,4])) // false
