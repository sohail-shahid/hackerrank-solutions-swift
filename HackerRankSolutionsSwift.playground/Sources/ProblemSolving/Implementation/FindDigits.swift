// https://www.hackerrank.com/challenges/find-digits/problem
import Foundation

func findDigits(n: Int) -> Int {
    let digits = "\(n)".compactMap { char in
        char.wholeNumberValue ?? 0
    }
    var divisior = 0
    for digit in digits {
        if digit != 0 && n % digit == 0 {
            divisior += 1
        }
    }
    return divisior
}
