// https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
import Foundation

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var currentDay = i;
    var beautifulDays = 0
    
    while (currentDay <= j) {
        var rev_num = 0
        var num = currentDay;
        while (num > 0) {
            rev_num = rev_num*10 + num%10
            num = num/10
        }
        
        let sum = currentDay - rev_num
        if sum%k == 0 {
            beautifulDays += 1
        }
        currentDay += 1
    }
    return beautifulDays
}
