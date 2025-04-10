// 599. Minimum Index Sum of Two Lists
// https://leetcode.com/problems/minimum-index-sum-of-two-lists/

import Foundation

func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    var hash = [String: Int](), minValue = Int.max, result = [String()]
    for i in stride(from: 0, to: list1.count, by: 1) {
        hash[list1[i]] = i
    }
    for j in stride(from: 0, to: list2.count, by: 1) {
        guard let value = hash[list2[j]] else { continue }
        let sum = j + value
        if sum < minValue {
            minValue = sum
            result = [list2[j]]
        } else if sum == minValue {
            result.append(list2[j])
        }
    }
    return result
}

print(findRestaurant(["Shogun","Tapioca Express","Burger King","KFC"], ["Piatti","The Grill at Torrey Pines","Hungry Hunter Steakhouse","Shogun"])) // ["Shogun"]

print(findRestaurant(["Shogun","Tapioca Express","Burger King","KFC"], ["KFC","Shogun","Burger King"])) // ["Shogun"]

print(findRestaurant(["happy","sad","good"], ["sad","happy","good"])) // ["sad","happy"]
