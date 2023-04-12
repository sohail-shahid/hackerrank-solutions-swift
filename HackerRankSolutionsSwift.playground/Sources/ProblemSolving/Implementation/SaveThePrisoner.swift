// https://www.hackerrank.com/challenges/save-the-prisoner/problem
import Foundation

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    var lastPrisoner = m+s
    lastPrisoner = (lastPrisoner-1)%n
    return lastPrisoner == 0 ? n : lastPrisoner
}
