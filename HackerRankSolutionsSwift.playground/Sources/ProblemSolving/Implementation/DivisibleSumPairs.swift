// https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
import Foundation


public func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var pairsCount = 0
    for start in 0 ..< ar.count-1 {
        for end in start+1 ..< ar.count {
            if (ar[start] + ar[end]) % k == 0 {
                pairsCount += 1
            }
        }
    }
    return pairsCount
}
