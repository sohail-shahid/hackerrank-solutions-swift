// https://www.hackerrank.com/challenges/drawing-book/problem
import Foundation

func pageCount(n: Int, p: Int) -> Int {
    var (startLeft,startRight) = (0,1)
    var (endLeft,endRight) = (0,1)
    if n > 1 {
        (endLeft,endRight) = ((n%2 == 0) ? n : n-1, (n%2 != 0) ? n : n+1)
    }
    var flips = 0
    let maxFlips = n/2
    
    while flips <= maxFlips {
        if p == startLeft || p == startRight {
            return flips
        }
        if p == endLeft ||  p == endRight {
            return flips
        }
        (startLeft,startRight) = (startLeft+2,startRight+2)
        (endLeft,endRight) = (endLeft-2,endRight-2)
        flips += 1
    }
    return -1
}
