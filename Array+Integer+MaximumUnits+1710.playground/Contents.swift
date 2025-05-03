import Foundation

func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
    var boxes = boxTypes.sorted { $0[1] > $1[1] }, units = 0, s = truckSize
    for box in boxes {
        if box[0] <= s {
            s -= box[0]
            units += box[0] * box[1]
        } else {
            units += box[1] * s
            break
        }
    }
    return units
}

print(maximumUnits([[1, 3], [2, 2], [3, 1]], 4)) // 8
print(maximumUnits([[5, 10], [2, 5], [4, 7], [3, 9]], 10)) // 91
