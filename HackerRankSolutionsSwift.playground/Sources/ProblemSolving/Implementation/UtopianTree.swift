// https://www.hackerrank.com/challenges/utopian-tree/problem
import Foundation

public func utopianTree(n: Int) -> Int {
    var currentHeight : Int = 1
    for cycle in 0 ..< n {
        if cycle % 2 == 0 {
            currentHeight *= 2
        } else {
            currentHeight += 1
        }
    }
    return currentHeight
}
