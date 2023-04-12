// https://www.hackerrank.com/challenges/circular-array-rotation/problem
import Foundation

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    // Write your code here
    var input = a
    let rotationRequired = k%input.count
    for _ in 0 ..< rotationRequired {
        let last = input.removeLast()
        input.insert(last, at: 0)
    }
    var result: [Int] = []
    for query in queries {
        result.append(input[query])
    }
    return result
}
