// https://www.hackerrank.com/challenges/the-hurdle-race/problem
import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {
    let maxHeight = height.max()!
    let result = (maxHeight > k) ? (maxHeight - k) : 0
    return result
}
