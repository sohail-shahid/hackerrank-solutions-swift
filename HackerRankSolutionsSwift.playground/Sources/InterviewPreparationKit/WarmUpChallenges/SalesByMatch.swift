// https://www.hackerrank.com/challenges/sock-merchant/problem

import Foundation

public func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var pairs = 0
    var frequency: [Int: Int] = [:]
    for sock in ar {
        frequency[sock] = (frequency[sock] ?? 0) + 1
        if frequency[sock] == 2 {
            frequency[sock] = 0
            pairs += 1
        }
    }
    return pairs
}
