// https://www.hackerrank.com/challenges/permutation-equation/problem
import Foundation

func permutationEquation(p: [Int]) -> [Int] {
    var result: [Int] = []
    for x in 1 ... p.count {
        let indexOfX = p.firstIndex(of: x) ?? 0
        let indexOfY = p.firstIndex(of: indexOfX + 1) ?? 0
        result.append(indexOfY + 1)
    }
    return result
}
