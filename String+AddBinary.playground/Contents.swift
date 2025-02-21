import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    let a = Array(a)
    let b = Array(b)
    var ai = a.count - 1
    var bi = b.count - 1
    var carry = 0
    var result = [String]()
    while ai > -1 || bi > -1 || carry > 0  {
        var sum = carry
        if ai > -1 {
            sum += a[ai].wholeNumberValue!
            ai -= 1
        }
        if bi > -1 {
            sum += b[bi] == "1" ? 1 : 0
            bi -= 1
        }
        result.append("\(sum % 2)")
        carry = sum > 1 ? 1 : 0
    }
    return result.reversed().joined()
}

print(addBinary("1111", "11111000"))
