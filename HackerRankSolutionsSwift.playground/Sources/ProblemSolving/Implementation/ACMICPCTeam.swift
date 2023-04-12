// https://www.hackerrank.com/challenges/acm-icpc-team/problem
import Foundation

func acmTeam(topic: [String]) -> [Int] {
    // Write your code here
    var topicArray: [[Int]] = []
    for string in topic {
        let s = string.map({$0.wholeNumberValue ?? 0})
        topicArray.append(s)
    }
    var maxTopic = 0
    var numberOfTeams = 0
    for i in 0 ..< topicArray.count {
        let firstTeam = topicArray[i]
        for j in i+1 ..< topicArray.count {
            let secondTeam = topicArray[j]
            var topicsCount = 0
            for index in 0 ..< firstTeam.count {
                if firstTeam[index] | secondTeam[index] == 1 {
                    topicsCount += 1
                }
            }
            if topicsCount == maxTopic{
                numberOfTeams += 1
            }
            if topicsCount > maxTopic {
                maxTopic = topicsCount
                numberOfTeams = 1
            }
        }
    }
    return [maxTopic, numberOfTeams]
}
