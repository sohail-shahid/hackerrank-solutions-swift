// https://www.hackerrank.com/challenges/magic-square-forming/problem
import Foundation

func minimum(array : [Int]) -> Int {
    var minimum = array.first!
    for data in array {
        if minimum >= data {
            minimum = data
        }
    }
    return minimum
}
func formingMagicSquare(s: [[Int]]) -> Int {
    let possibleMagicMatrix = [
        [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
        [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
        [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
        [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
        [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
        [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
        [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
        [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
    ]
    var costArray : [Int] = []
    for magicMatrix in possibleMagicMatrix {
        var cost = 0
        for row in 0 ..< 3 {
            for col in 0 ..< 3 {
                cost += abs(s[row][col]-magicMatrix[row][col])
            }
        }
        costArray.append(cost)
    }
    print(costArray)
    return minimum(array: costArray);
}

