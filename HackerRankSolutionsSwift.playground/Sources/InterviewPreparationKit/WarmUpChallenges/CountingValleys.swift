// https://www.hackerrank.com/challenges/counting-valleys/problem
import Foundation

public func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var seaLevel = 0
    var valleys = 0
    for step in path {
        if step == "U" {
            seaLevel += 1
            if seaLevel == 0 {
                valleys += 1
            }
        }
        if step == "D" {
            seaLevel -= 1
        }
    }
    return valleys
}
