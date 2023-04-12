// https://www.hackerrank.com/challenges/day-of-the-programmer/problem
import Foundation

public func dayOfProgrammer(year: Int) -> String {
    var daysInFeb = 0
    if(year < 1918){
        daysInFeb = year%4 == 0 ? 29 : 28
    } else if(year > 1918) {
        daysInFeb = ((year%400 == 0) || (!(year%100 == 0) && (year%4 == 0))) ? 29 : 28
    }
    else { // 1918
        daysInFeb = 15
    }
    
    let days = 256 - (daysInFeb + 215);
    return "\(days).09.\(year)"
}
