// https://www.hackerrank.com/challenges/extra-long-factorials/problem
import Foundation

func stringMultiplication(str: String, by num: Int) -> String{
    let intArray: [Int] = str.map { Int(String($0))! * num}
    var result = ""
    var reminder = 0

    for number in intArray.reversed(){
        let total = number + reminder
        reminder = total / 10
        result.insert(Character(String(total % 10)), at: result.startIndex)
    }
    while reminder > 0 {
        result.insert(Character(String(reminder % 10)), at: result.startIndex)
        reminder = reminder/10
    }
    return result
}

func extraLongFactorials(n: Int) -> Void {
    var result = "1"
    for i in 1 ... n {
        result = stringMultiplication(str: result, by: i)
    }
    print( result)
}
