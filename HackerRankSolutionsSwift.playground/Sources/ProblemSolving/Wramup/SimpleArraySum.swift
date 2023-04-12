// https://www.hackerrank.com/challenges/simple-array-sum/problem
import Foundation

public func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    for contentData in ar {
        sum += contentData
    }
    return sum
}

