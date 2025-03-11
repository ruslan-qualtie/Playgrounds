import Foundation

func backspaceCompare(_ s: String, _ t: String) -> Bool {
    var sa = Array(s), ta = Array(t), p = 0
    while p < sa.count {
        if sa[p] == "#" {
            sa.remove(at: p)
            if p > 0 {
                p -= 1
                sa.remove(at: p)
            }
        } else {
            p += 1
        }
    }
    p = 0
    while p < ta.count {
        if ta[p] == "#" {
            ta.remove(at: p)
            if p > 0 {
                p -= 1
                ta.remove(at: p)
            }
        } else {
            p += 1
        }
    }
    return String(sa) == String(ta)
}

func backspaceCompare2(_ s: String, _ t: String) -> Bool {
    backspace(s) == backspace(t)
}

private func backspace(_ s: String) -> [Character] {
    var stack: [Character] = .init()
    for char in s {
        if char == "#" {
            if !stack.isEmpty { stack.popLast() }
        } else {
            stack.append(char)
        }
    }
    return stack
}

print(backspaceCompare("#ab#c", "ad#c"))
print(backspaceCompare2("#ab#c", "ad#c"))
