// https://www.hackerrank.com/challenges/taum-and-bday/problem
import Foundation

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    let conversionCostOfW = wc + z
    let conversionCostOfB = bc + z
    if bc > conversionCostOfW {
        return (w * wc) + (b * conversionCostOfW)
    } else if wc > conversionCostOfB {
        return (b * bc) + (w * conversionCostOfB)
    } else {
        return (b * bc) + (w * wc)
    }
}
