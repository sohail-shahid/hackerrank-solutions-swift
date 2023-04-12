// https://www.hackerrank.com/challenges/compare-the-triplets/problem
import Foundation

public func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aScore = 0
    var bScore = 0
    for index in 0 ..< a.count {
        if a[index] > b[index] {
            aScore += 1
        } else if (a[index] < b[index]) {
            bScore += 1
        }
    }
    return [aScore,bScore]
}
