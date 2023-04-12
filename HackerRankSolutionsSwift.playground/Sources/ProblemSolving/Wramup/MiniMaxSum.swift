// https://www.hackerrank.com/challenges/mini-max-sum/problem
import Foundation

public func miniMaxSum(arr: [Int]) -> Void {
    let min: Int  =  arr.count > 0 ? arr.min() ?? 0 : 0
    let max: Int  = arr.count > 0 ?  arr.max() ?? 0 : 0
    let sum = arr.reduce(0,+)
    print("\(sum - max)" + " " + "\(sum - min)")
}
