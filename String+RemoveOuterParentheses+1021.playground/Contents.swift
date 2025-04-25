// 1021. Remove Outermost Parentheses
// https://leetcode.com/problems/remove-outermost-parentheses/

import Foundation

func removeOuterParentheses(_ s: String) -> String {
    var buf = [Character](), result = buf, o = 0, c = 0
    for char in s {
        if char == "(" { o += 1 }
        if char == ")" { c += 1 }
        buf.append(char)
        if o == c {
            buf.removeFirst()
            buf.removeLast()
            result += buf
            buf = []
        }
    }
    return String(result)
}

print(removeOuterParentheses("(()())(())")) // "()()()"
print(removeOuterParentheses("(()())(())(()(()))")) // "()()()()(())"
print(removeOuterParentheses("()()")) // ""
