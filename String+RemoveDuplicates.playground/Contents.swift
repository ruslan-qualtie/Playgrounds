import Foundation

func removeDuplicates(_ s: String) -> String {
    var stack: [Character] = []
    for char in s {
        if !stack.isEmpty && stack.last == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    return String(stack)
}

print(removeDuplicates("abbaca"))  // ➝ "ca"
print(removeDuplicates("azxxzy"))  // ➝ "ay"
print(removeDuplicates("a"))       // ➝ "a"
print(removeDuplicates("aaaa"))    // ➝ ""
print(removeDuplicates("abab"))    // ➝ abab
