// 2418. Sort the People
// https://leetcode.com/problems/sort-the-people/

import Foundation

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    zip(heights, names).map{($0,$1)}.sorted(by:>).map{$0.1}
}

print(sortPeople(["Mary", "John", "Emma"], [180, 165, 170])) // ["Mary", "Emma", "John"]
print(sortPeople(["Alice", "Bob", "Bob"], [155, 185, 150])) // ["Bob", "Alice", "Bob"]
