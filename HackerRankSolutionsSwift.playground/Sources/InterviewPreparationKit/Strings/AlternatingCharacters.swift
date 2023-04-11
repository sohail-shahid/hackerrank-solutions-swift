// https://www.hackerrank.com/challenges/alternating-characters/problem
import Foundation

public func alternatingCharacters(s: String) -> Int {
    // Write your code here
    var charToDelete = 0
    var currentCahr = s.first
    var shouldSkip = true
    for char in s {
        if shouldSkip {
            shouldSkip = false
            continue
        }
        if currentCahr == char {
            charToDelete += 1
        } else {
            currentCahr = char
        }
    }
    return charToDelete
}
