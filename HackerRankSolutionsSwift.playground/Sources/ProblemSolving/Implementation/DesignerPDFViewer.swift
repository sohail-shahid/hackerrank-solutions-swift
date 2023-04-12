// https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
import Foundation

func designerPdfViewer(h: [Int], word: String) -> Int {
    var maximumHeight = 0
    for char in word {
        if char.isASCII {
            let asciiValue = Int(char.asciiValue!)
            let index =  asciiValue - 97
            if index >= 0 && index < 26 {
                let heightOfChar = h[index]
                if heightOfChar > maximumHeight {
                    maximumHeight = heightOfChar
                }
            }
        }
    }
    let area = word.count * maximumHeight
    return area
}
