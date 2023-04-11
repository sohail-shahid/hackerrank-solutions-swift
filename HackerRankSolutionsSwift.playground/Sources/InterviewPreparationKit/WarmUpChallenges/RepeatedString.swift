// https://www.hackerrank.com/challenges/repeated-string/problem
import Foundation

func countA(string: String) -> Int {
    var aCount = 0
    for char in string.lowercased() {
        if char == "a" {
            aCount += 1
        }
    }
    return aCount
}
public func repeatedString(s: String, n: Int) -> Int {
    var aCount = countA(string: s)
    aCount = aCount * (n/s.count)
    let subString = s.prefix(n % s.count)
    aCount += countA(string: String(subString))
    return aCount
}
