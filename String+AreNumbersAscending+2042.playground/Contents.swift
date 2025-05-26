// 2042. Check if Numbers Are Ascending in a Sentence
// https://leetcode.com/problems/check-if-numbers-are-ascending-in-a-sentence/

import Foundation

func areNumbersAscending(_ s: String) -> Bool {
    var nums = s.split(separator: " ").filter { Int($0) != nil }
    if nums.count < 2 { return true }
    for i in 1..<nums.count {
        if Int(nums[i - 1])! >= Int(nums[i])! {
            return false
        }
    }
    return true
}

print(areNumbersAscending("1 box has 3 blue 4 red 6 green and 12 yellow marbles")) // true
print(areNumbersAscending("hello world 5 x 5")) // false
print(areNumbersAscending("sunset is at 7 51 pm overnight lows will be in the low 50 and 60 s")) // false 
