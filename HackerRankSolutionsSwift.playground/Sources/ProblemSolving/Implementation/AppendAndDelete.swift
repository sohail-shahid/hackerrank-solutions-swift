// https://www.hackerrank.com/challenges/append-and-delete/problem
import Foundation

func appendAndDelete(s: String, t: String, k: Int) -> String {
    let initialStrChars = Array(s)
    let desiredStrChars = Array(t)
    var commonChars = 0
    var currentIndex = 0
    while currentIndex < initialStrChars.count && currentIndex < desiredStrChars.count {
        if initialStrChars[currentIndex] == desiredStrChars[currentIndex] {
            currentIndex += 1
            commonChars += 1
        } else {
            break
        }
    }
    var result = ""
    let charsToDelete = initialStrChars.count - commonChars
    let charsToAdd = desiredStrChars.count - commonChars
    let totalMovesRequried = charsToAdd + charsToDelete
    if s == t && (k >= s.count * 2 || k%2 == 0) {
        result = "Yes"
    } else if s == t {
        result = "NO"
    } else if totalMovesRequried == k || (totalMovesRequried < k && (totalMovesRequried - k) % 2 == 0) || (totalMovesRequried + (2 * commonChars) <= k)  {
        result = "Yes"
    } else {
        result = "No"
    }
    return result
}
