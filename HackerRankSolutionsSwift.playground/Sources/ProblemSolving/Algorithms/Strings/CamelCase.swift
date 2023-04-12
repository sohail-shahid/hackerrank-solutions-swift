// https://www.hackerrank.com/challenges/camelcase/problem
import Foundation

func camelcase(s: String) -> Int {
    var numOfWord = 1
    for char in s {
        if char.isUppercase {
            numOfWord += 1
        }
    }
    return numOfWord
}
