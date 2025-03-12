import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    Array(Set(nums1).intersection(Set(nums2)))
}

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var freq = [Int: Int](), result = [Int]()
    for num in nums1 {
        freq[num, default: 0] += 1
    }
    for num in nums2 {
        if let value = freq[num], value > 0 {
            result.append(num)
            freq[num]! -= 1
        }
    }
    return result
}

print(intersection([1, 2, 2, 1], [2, 2])) // [2]
print(intersect([1, 2, 2, 1], [2, 2])) // [2, 2]

