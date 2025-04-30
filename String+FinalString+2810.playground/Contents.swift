// 2810. Faulty Keyboard
// https://leetcode.com/problems/faulty-keyboard/

import Foundation

func finalString(_ s: String) -> String {
    var result = [Character](), rev = false
    for char in s {
        if char == "i" {
            rev = !rev
        } else if rev {
            rev = false
            result.reverse()
            result.append(char)
        } else {
            result.append(char)
        }
    }
    if rev {
        result.reverse()
    }
    return String(result)
}

print(finalString("string")) // "rtsng"
print(finalString("poiinter")) // "ponter"
