// 1603. Design Parking System
// https://leetcode.com/problems/design-parking-system/

import Foundation

class ParkingSystem {
    private var big: Int
    private var medium: Int
    private var small: Int

    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        switch carType {
            case 1:
                if big == 0 {
                    return false
                } else {
                    big -= 1
                    return true
                }
            case 2:
                if medium == 0 {
                    return false
                } else {
                    medium -= 1
                    return true
                }
            default:
                if small == 0 {
                    return false
                } else {
                    small -= 1
                    return true
                }
        }
    }
}

let system = ParkingSystem(1, 1, 0)
print(system.addCar(1)) // true
print(system.addCar(2)) // true
print(system.addCar(3)) // false
print(system.addCar(4)) // false
