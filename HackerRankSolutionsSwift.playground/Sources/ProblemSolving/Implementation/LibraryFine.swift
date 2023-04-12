// https://www.hackerrank.com/challenges/library-fine/problem
import Foundation

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    if y1 == y2 && m1 == m2 {
        if d1 - d2 <= 0 {
            return 0
        }
        return (d1 - d2) * 15
    } else if  y1 == y2 {
        if m1 - m2 <= 0  {
            return 0
        }
        return (m1 - m2) * 500
    } else {
        if y1 - y2 <= 0  {
            return 0
        }
        return 10000
    }
}
