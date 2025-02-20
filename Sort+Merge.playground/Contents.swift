import Foundation

private func mergeAscendingSort<T: Comparable>(_ array: [T]) -> [T] {
    print("Input array: \(array)")
    if array.count <= 1 {
        return array
    }
    let middle = array.count / 2
    let leftHalf = array[..<middle]
    let rightHalf = array[middle...]
    return merge(mergeAscendingSort(Array(leftHalf)), mergeAscendingSort(Array(rightHalf)))
}

private func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var merged = [T]()
    var leftIndex = 0
    var rightIndex = 0
    print("Left: \(left), Right: \(right)")

    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            merged.append(left[leftIndex])
            leftIndex += 1
        } else {
            merged.append(right[rightIndex])
            rightIndex += 1
        }
    }
    merged += left[leftIndex...]
    merged += right[rightIndex...]
    print("Merged: \(merged)")
    return merged
}

mergeAscendingSort([5, 4, 3, 2, 1])
