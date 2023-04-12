// https://www.hackerrank.com/challenges/between-two-sets/problem
import Foundation

func getTotalX(a: [Int], b: [Int]) -> Int {
    var count = 0
    for i in 1 ... 100 {
        var factorsOfi = 0
        for indexA in 0 ..< a.count {
            if  i % a[indexA] == 0 {
                factorsOfi += 1
            }
        }
        if factorsOfi == a.count {
            var isFactorOFAllB = 0
            for indexB in 0 ..< b.count {
                if b[indexB]%i == 0 {
                    isFactorOFAllB += 1
                }
            }
            if isFactorOFAllB == b.count {
                count += 1
            }
        }
    }
    return count
}
