import Foundation

private func convertToBinary(_ string: String) -> String {
    let number = Int(string, radix: 10)!
    print(number)
    let result = String(number, radix: 2)
    print(result)
    return result
}

convertToBinary("2024")

print("2024-10-12".split(separator: "-").map { String(Int($0, radix: 10)!, radix: 2) }.joined(separator: "-"))

