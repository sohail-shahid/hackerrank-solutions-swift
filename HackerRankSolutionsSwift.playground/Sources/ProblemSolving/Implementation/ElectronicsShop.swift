// https://www.hackerrank.com/challenges/electronics-shop/problem
import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var maxBying = -1
    for kPrice in keyboards {
        for dPrice in drives {
            let totalPrice = kPrice + dPrice
            if (totalPrice <= b && totalPrice > maxBying) {
                maxBying = totalPrice
            }
        }
    }
    return maxBying
}
