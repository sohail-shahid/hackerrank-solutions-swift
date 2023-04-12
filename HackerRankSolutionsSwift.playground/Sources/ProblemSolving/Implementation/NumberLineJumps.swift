// https://www.hackerrank.com/challenges/kangaroo/problem
import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var k1 = x1
    var k2 = x2
    if (v1 <= v2) {
        return "NO"
    }
    while (k1 < k2) {
        k1 += v1
        k2 += v2
        if k1 == k2 {
            return "YES"
        }
    }
    return "NO"
}
