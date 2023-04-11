// https://www.hackerrank.com/challenges/common-child/problem

import Foundation

public func commonChild(s1: String, s2: String) -> Int {
    // Write your code here
    var resultMap: [[Int]] = []
    for _ in 0 ..< s1.count + 1 {
        let array: [Int] = Array(repeating: 0, count: s1.count + 1)
        resultMap.append(array)
    }
    let char1 = Array(s1)
    let char2 = Array(s2)
    for i in 1 ... s1.count {
        for j in 1 ... s1.count {
            if char1[i-1] == char2[j-1] {
                resultMap[i][j] = resultMap[i-1][j-1] + 1
            } else {
                resultMap[i][j] = max(resultMap[i-1][j], resultMap[i][j-1])
            }
        }
    }
    return resultMap.last!.last!
}
