// https://www.hackerrank.com/challenges/cut-the-sticks/problem
import Foundation

func cutTheSticks(arr: [Int]) -> [Int] {
    var input = arr
    var output: [Int]  = []
    while input.count > 0 {
        let minimum = input.min() ?? 0
        output.append(input.count)
        input = input.map { $0 - minimum }
        input = input.filter{$0 != 0}
    }
    return output
}
