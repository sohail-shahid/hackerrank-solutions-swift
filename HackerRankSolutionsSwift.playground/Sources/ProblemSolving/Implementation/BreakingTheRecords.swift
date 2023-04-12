// https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
import Foundation

public func breakingRecords(scores: [Int]) -> [Int] {
    var maxScore = scores[0]
    var minScore = scores[0]
    var maxBreak = 0
    var minBreak = 0
    for index in 0 ..< scores.count {
        if maxScore < scores[index] {
            maxScore = scores[index]
            maxBreak += 1
        }
        if minScore > scores[index] {
            minScore = scores[index]
            minBreak += 1
        }
    }
    print("\(maxBreak) \(minBreak)")
    return [maxBreak,minBreak]
}
