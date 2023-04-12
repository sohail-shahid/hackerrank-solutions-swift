// https://www.hackerrank.com/challenges/picking-numbers/problem
import Foundation

func pickingNumbers(a: [Int]) -> Int {
    let b = a.sorted()
    var maximumLenght = 0
    for i in 0 ..< b.count {
        var currentLenght = 1
        for j in i+1 ..< b.count {
            if abs(b[i] - b[j]) <= 1 {
                currentLenght += 1
            } else {
                break;
            }
        }
        if currentLenght > maximumLenght {
            maximumLenght = currentLenght
        }
    }
    return maximumLenght
}
