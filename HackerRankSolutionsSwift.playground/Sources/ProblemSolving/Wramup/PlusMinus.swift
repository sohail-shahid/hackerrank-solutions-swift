// https://www.hackerrank.com/challenges/plus-minus/problem
import Foundation

func plusMinus(arr: [Int]) -> Void {
    var positiveFre = 0
    var negFre = 0
    var zeroFre = 0
    for data in arr {
        if data > 0 {
            positiveFre += 1
        }else if data < 0 {
            negFre += 1
        }else {
            zeroFre += 1
        }
    }
    print(String(format: "%.6f", Float(positiveFre)/Float(arr.count)))
    print(String(format: "%.6f", Float(negFre)/Float(arr.count)))
    print(String(format: "%.6f", Float(zeroFre)/Float(arr.count)))
}
