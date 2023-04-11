// https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem
import Foundation

public func jumpingOnClouds(c: [Int]) -> Int {
    var jumped = 0
    var index = 0
    while index < c.count - 2 {
        print(index)
        if c[index+2] == 0 {
            index += 2
        } else if c[index+1] == 0 {
            index += 1
        } else {
            return -1
        }
        jumped += 1
    }
    if index == c.count - 2 {
        jumped += 1
    }
    return jumped
}
