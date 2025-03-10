import Foundation

func isValid(_ s: String) -> Bool {
    if s.count % 2 != 0 { return false }
    var stack = [Character](), brackets: [Character: Character] = [")" : "(", "]" : "[", "}" : "{"]
    for char in s {
        if let bracket = brackets[char] {
            if stack.isEmpty || bracket != stack.removeLast() {
                return false
            }
        } else {
            stack.append(char)
        }
    }
    return stack.isEmpty
}

print(isValid("([])"))
print(isValid("([)]"))

