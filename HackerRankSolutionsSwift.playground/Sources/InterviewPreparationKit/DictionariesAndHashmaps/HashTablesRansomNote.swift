// https://www.hackerrank.com/challenges/ctci-ransom-note/problem
import Foundation

public func checkMagazine(magazine: [String], note: [String]) -> Void {
    var magazineWords: [String: Int] = [:]
    for word in magazine {
        magazineWords[word] = (magazineWords[word] ?? 0) + 1
    }
    var result = "Yes"
    for noteWord in note {
        if magazineWords[noteWord] == nil || magazineWords[noteWord] == 0 {
            result = "No"
            break
        }
        magazineWords[noteWord]! -= 1
    }
    print(result)
}
