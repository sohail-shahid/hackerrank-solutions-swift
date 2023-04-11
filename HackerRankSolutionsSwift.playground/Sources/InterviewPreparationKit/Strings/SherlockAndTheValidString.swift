// https://www.hackerrank.com/challenges/sherlock-and-valid-string/problem
import Foundation

public func isValid(s: String) -> String {
    // Write your code here
    var charCount: [Character: Int] = [:]
    for char in s {
        charCount[char] = (charCount[char] ?? 0) + 1
    }
    var valueCountDic: [Int: Int] = [:]
    for value in charCount.values {
        valueCountDic[value] = (valueCountDic[value] ?? 0) + 1
    }
    debugPrint(charCount)
    debugPrint(valueCountDic)

    if valueCountDic.count == 1 {
        return "YES"
    } else if valueCountDic.count == 2 {
        let first = valueCountDic.popFirst()!
        let second = valueCountDic.popFirst()!
        if (first.key == 1 && first.value == 1) || (second.key == 1 && second.value == 1) {
            return "YES"
        }
        if (first.value == 1 || second.value == 1) && abs(first.key - second.key) == 1 {
            return "YES"
        }
    }
    return "NO"
}
