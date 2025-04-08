import Foundation

func countSegments(_ s: String) -> Int {
   s.split(separator: " ").count
}

print(countSegments("Hello, my name is John")) // 5
print(countSegments("Hello")) // 1
