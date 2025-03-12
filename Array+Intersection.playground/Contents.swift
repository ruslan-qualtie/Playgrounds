import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    Array(Set(nums1).intersection(Set(nums2)))
}

print(intersection([1, 2, 2, 1], [2, 2]))
