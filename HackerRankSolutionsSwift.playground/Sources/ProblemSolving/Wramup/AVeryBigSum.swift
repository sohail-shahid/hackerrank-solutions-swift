// https://www.hackerrank.com/challenges/a-very-big-sum/problem
import Foundation

public func aVeryBigSum(ar: [Int]) -> Int64 {
    var sum : Int64 = 0
    for dataContent in ar {
        sum =  sum + Int64(dataContent);
    }
    return sum
}
