// 1614. Maximum Nesting Depth of the Parentheses
// https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

import Foundation

func maxDepth(_ s: String) -> Int {
    var depth = 0, maxDepth = 0
    for char in s {
        if char == "(" {
            depth += 1
            if depth > maxDepth {
                maxDepth = depth
            }
        }
        if char == ")" { depth -= 1}
    }
    return maxDepth
}

print(maxDepth("(1+(2*3)+((8)/4))+1")) // 3
print(maxDepth("(1)+((2))+(((3)))")) // 3
print(maxDepth("()(())((()()))")) // 3
