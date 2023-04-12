// https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited
import Foundation

func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var energyLevel = 100
    var pos = 0
    repeat {
        pos += k
        pos = pos % c.count
        if c[pos] == 0 {
            energyLevel -= 1
        } else {
            energyLevel -= 3
        }
    } while (pos != 0)
    return energyLevel
}
