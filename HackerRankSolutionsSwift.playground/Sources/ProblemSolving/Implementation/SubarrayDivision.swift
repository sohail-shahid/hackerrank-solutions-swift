// https://www.hackerrank.com/challenges/the-birthday-bar/problem
import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var segmentCount = 0
    for i in 0 ..< s.count {
        var sum = 0
        for j in 0 ..< m {
            if i+j < s.count {
                sum += s[i+j]
            }
        }
        if sum == d {
            segmentCount += 1
        }
    }
    return segmentCount
}

