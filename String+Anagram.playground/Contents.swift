import Foundation

private func isAnagram(_ s: String, _ t: String) -> Bool {
    Array(s).sorted() == Array(t).sorted()
}

print(isAnagram("anagram", "nagaram"))

print(isAnagram("rat", "car"))
