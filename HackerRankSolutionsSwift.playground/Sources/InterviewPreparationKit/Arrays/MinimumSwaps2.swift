// https://www.hackerrank.com/challenges/minimum-swaps-2/problem

import Foundation

public func minimumSwaps(arr: [Int]) -> Int {
    var result = arr
    var swapCount = 0
    var start = 0
    var end = result.count
    while start < end {
        if result[start] != start + 1 {
            swapCount += 1
            let swap = result[start]
            result[start] = result[swap - 1]
            result[swap - 1] = swap
        } else {
            start += 1
        }
        if result[end-1] == end {
            end -= 1
        }
    }
    return swapCount
}
