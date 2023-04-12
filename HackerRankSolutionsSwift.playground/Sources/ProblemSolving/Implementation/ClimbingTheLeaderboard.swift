// https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem
import Foundation

func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
    var allicPositions : [Int] = []
    var position = 0
    var aScoreIndex = alice.count - 1
    var currentIndexOfLeaderboard = 0
    while (aScoreIndex >= 0) {
        if alice[aScoreIndex] >= scores[currentIndexOfLeaderboard] {
            repeat {
                allicPositions.append(position+1)

                aScoreIndex -= 1
            } while (aScoreIndex >= 0 && alice[aScoreIndex] == alice[aScoreIndex+1])
        }else {
            position += 1
            currentIndexOfLeaderboard += 1
            while ((currentIndexOfLeaderboard < scores.count) && (scores[currentIndexOfLeaderboard] == scores[currentIndexOfLeaderboard - 1])) {
                currentIndexOfLeaderboard += 1
            }
        }
        if currentIndexOfLeaderboard == scores.count {
            while (aScoreIndex >= 0) {
                allicPositions.append(position+1)

                aScoreIndex -= 1
            }
            break
        }
    }
    return allicPositions.reversed()
}
