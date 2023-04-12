// https://www.hackerrank.com/challenges/strange-advertising/problem
import Foundation

func viralAdvertising(n: Int) -> Int {
    var numberOfShared = 5
    var totalNumberOfLike = 0
    for _ in 1 ... n {
        let numberOfLike = numberOfShared/2
        totalNumberOfLike += numberOfLike
        numberOfShared = numberOfLike * 3
    }
    return totalNumberOfLike
}
