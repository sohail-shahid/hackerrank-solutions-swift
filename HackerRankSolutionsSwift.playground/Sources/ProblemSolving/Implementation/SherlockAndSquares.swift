// https://www.hackerrank.com/challenges/sherlock-and-squares/problem
import Foundation

func squares(a: Int, b: Int) -> Int {
    // Write your code here
    var square: Int64 = 1
    var number: Int64 = 1
    var squareCount = 0
    while square <= b {
        if square >= a && square <= b {
            squareCount += 1
        }
        number += 1
        square = number * number
    }
    return squareCount
}
