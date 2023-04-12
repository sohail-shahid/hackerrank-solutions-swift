// https://www.hackerrank.com/challenges/angry-professor/problem
import Foundation

func angryProfessor(k: Int, a: [Int]) -> String {
    var presentStudent = 0
    for arivalTime in a {
        if arivalTime <= 0 {
            presentStudent += 1
        }
    }
    return (presentStudent >= k) ? "NO" : "YES"
}
