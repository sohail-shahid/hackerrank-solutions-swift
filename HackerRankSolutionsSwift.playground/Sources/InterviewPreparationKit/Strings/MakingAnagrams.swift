// https://www.hackerrank.com/challenges/ctci-making-anagrams/problem
import Foundation

public func makeAnagram(a: String, b: String) -> Int {
    // Write your code here
    var charToDelete = 0
    var frequencyDic: [Character: Int] = [:]
    
    for charA in a {
        frequencyDic[charA] = (frequencyDic[charA] ?? 0) + 1
    }
    
    for charB in b {
        frequencyDic[charB] = (frequencyDic[charB] ?? 0) - 1
    }
    
    for count in frequencyDic.values {
        charToDelete += abs(count)
    }
    return charToDelete
}
