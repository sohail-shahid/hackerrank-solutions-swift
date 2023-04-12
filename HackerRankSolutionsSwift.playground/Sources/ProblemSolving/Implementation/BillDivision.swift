// https://www.hackerrank.com/challenges/bon-appetit/problem
import Foundation

public func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    let total = bill.reduce(0,+)
    let actual = (total - bill[k])/2
    if (b == actual) {
       print("Bon Appetit")
    } else {
        print(b-actual)
    }
}
