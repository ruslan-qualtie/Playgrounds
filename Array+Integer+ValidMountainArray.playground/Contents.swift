import Foundation

func validMountainArray(_ arr: [Int]) -> Bool {
    let n = arr.count
    if n < 3 { return false }
    var i = 0
    while i + 1 < n && arr[i] < arr[i + 1] {
        i += 1
    }
    if i == 0 || i == n - 1 { return false }
    while i + 1 < n && arr[i] > arr[i + 1] {
        i += 1
    }
    return i == n - 1
}

print(validMountainArray([0, 3, 2, 1])) // true
print(validMountainArray([0, 3, 3, 1])) // false
print(validMountainArray([4, 3, 2, 1])) // false
