// https://www.hackerrank.com/challenges/migratory-birds/problem
import Foundation

public func migratoryBirds(arr: [Int]) -> Int {
    var commonType = [0,0,0,0,0]
    for type in arr {
        commonType[type-1] += 1
    }
    
    var maxIndex = 4
    var index = 4
    
    print(commonType)
    while index >= 0 {
        if commonType[maxIndex] <= commonType[index] {
            maxIndex = index
        }
        index -= 1
    }
    return maxIndex+1

}


