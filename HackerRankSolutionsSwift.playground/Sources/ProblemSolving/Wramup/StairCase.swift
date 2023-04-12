// https://www.hackerrank.com/challenges/staircase/problem
import Foundation

public func staircase(n: Int) -> Void {
    var charArray : [Character] = Array(repeating: " ", count: n)
    for i in 0 ..< n {
        charArray[n-1-i] = "#"
        print(String(charArray))
    }
}
