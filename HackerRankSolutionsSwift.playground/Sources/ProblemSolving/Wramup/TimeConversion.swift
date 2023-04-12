// https://www.hackerrank.com/challenges/time-conversion/problem
import Foundation

public func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let date = dateFormatter.date(from: s)
    dateFormatter.dateFormat = "HH:mm:ss"
    let date24 = dateFormatter.string(from: date!)
    return date24
}

