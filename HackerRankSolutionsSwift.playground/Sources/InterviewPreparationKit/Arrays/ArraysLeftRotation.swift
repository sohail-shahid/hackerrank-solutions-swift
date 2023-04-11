// https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem
import Foundation

public func rotLeft(a: [Int], d: Int) -> [Int] {
    // Write your code here
    var result = a
    for _ in 0 ..< d {
        let value = result.remove(at: 0)
        result.append(value)
    }
    return result
}

