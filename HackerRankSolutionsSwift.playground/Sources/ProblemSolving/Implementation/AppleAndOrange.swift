// https://www.hackerrank.com/challenges/apple-and-orange/problem
import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var numOfApples = 0
    for index in 0 ..< apples.count {
        if (a + apples[index]) >= s && (a + apples[index]) <= t {
            numOfApples += 1
        }
    }
    print(numOfApples)
    var numOfOranges = 0
    for index in 0 ..< oranges.count {
        if (b + oranges[index]) >= s && (b + oranges[index]) <= t {
            numOfOranges += 1
        }
    }
    print(numOfOranges)
}
