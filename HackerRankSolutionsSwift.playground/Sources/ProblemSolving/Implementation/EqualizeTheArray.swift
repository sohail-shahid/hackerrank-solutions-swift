// https://www.hackerrank.com/challenges/equality-in-a-array/problem
import Foundation

func equalizeArray(arr: [Int]) -> Int {
    var freDic: [Int:Int] = [:]
    for value in arr {
        freDic[value] = (freDic[value] ?? 0) + 1
    }
    var maxValue = 0
    for (_,value) in freDic {
        if maxValue < value {
            maxValue = value
        }
    }
    return arr.count - maxValue
}
