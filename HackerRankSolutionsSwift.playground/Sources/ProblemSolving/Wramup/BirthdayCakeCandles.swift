// https://www.hackerrank.com/challenges/birthday-cake-candles/problem
import Foundation

public func birthdayCakeCandles(ar: [Int]) -> Int {
    var max = ar.count > 0 ? ar[0] : 0
    var maxFre = 1
    for index in 1 ..< ar.count {
        if ar[index] > max {
            max = ar[index]
            maxFre = 1
        } else if ar[index] == max {
            maxFre += 1
        }
    }
    return maxFre
}
