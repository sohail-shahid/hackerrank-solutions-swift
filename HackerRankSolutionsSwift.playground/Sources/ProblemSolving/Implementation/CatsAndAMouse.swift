// https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
import Foundation

public func catAndMouse(x: Int, y: Int, z: Int) -> String {
    let distanceFromX = abs(z-x)
    let distanceFromY = abs(z-y)
    if distanceFromX == distanceFromY {
        return "Mouse C"
    } else if distanceFromX < distanceFromY {
        return "Cat A"
    }else {
        return "Cat B"
    }
}
