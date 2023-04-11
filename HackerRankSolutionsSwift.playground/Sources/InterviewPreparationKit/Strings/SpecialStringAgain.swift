// https://www.hackerrank.com/challenges/special-palindrome-again/problem
import Foundation

public func substrCount(n: Int, s: String) -> Int {
    let array = Array(s)
    var  count = array.count
    for i in 0 ..< count {
        let current = array[i]
        var j = i+1;
        while (j<array.count && array[j] == current) {
            count += 1
            j += 1
        }
        j = 1
        while (i-j>=0 && i+j<array.count && current != array[i+j] && array[i-j] == array[i+j] && array[i+j] == array[i+1]) {
            count += 1
            j += 1
        }
    }
    return count;
}
