// https://www.hackerrank.com/challenges/2d-array/problem
// 2D Array - DS

import Foundation

public func hourglassSum(arr: [[Int]]) -> Int {
    // Write your code here
    var sum: Int = 0
    var maxSum: Int = Int.min
    for row in 0 ..< 4 {
        for col in 0 ..< 4 {
            sum = arr[row][col] + arr[row][col+1] + arr[row][col+2]
            sum += arr[row+1][col+1]
            sum += arr[row+2][col] + arr[row+2][col+1] + arr[row+2][col+2]
            if sum > maxSum {
                maxSum = sum
            }
            sum = 0
        }
    }
    return maxSum
}
