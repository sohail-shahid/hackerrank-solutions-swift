// https://www.hackerrank.com/challenges/new-year-chaos/problem
import Foundation

public func minimumBribes(q: [Int]) -> Void {
    // Write your code here
    var result = q
    var totalBribe = 0
    var end = result.count - 1
    while end >= 0 {
        var j = end
        var currentBribe = 0
        while j < result.count - 1 && result[j] > result[j + 1] {
            currentBribe += 1
            if currentBribe > 2 {
                break
            }
            let temp = result[j + 1]
            result[j + 1] = result[j]
            result[j] = temp
            j += 1
        }
        if currentBribe > 2 {
            print("Too chaotic")
            return
        }
        totalBribe += currentBribe
        end -= 1
    }
    print(totalBribe)
}
