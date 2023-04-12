// https://www.hackerrank.com/challenges/diagonal-difference/problem
import Foundation

public func diagonalDifference(arr: [[Int]]) -> Int {
    var leftDai = 0
    var rightDai = 0
    for index in 0 ..< arr.count {
        leftDai += arr[index][index]
        rightDai += arr[index][arr.count-index-1]
    }
    return abs(leftDai-rightDai)
}
