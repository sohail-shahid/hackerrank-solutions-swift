// https://www.hackerrank.com/challenges/grading/problem
import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    var finalGrades : [Int] = []
    for index in 0 ..< grades.count {
        if (grades[index] >= 38 && (5 - grades[index] % 5) < 3) {
            finalGrades.append(grades[index] + (5 - grades[index] % 5) )
        } else {
            finalGrades.append(grades[index])
        }
    }
    return finalGrades
}
