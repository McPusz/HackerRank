import Foundation

let inputNum = 3
let inputs = [[11, 2, 4],[4, 5, 6],[10, 8, -12]]

func diagonalDifference(a: [[Int]]) -> Int {
    var primaryDiagonals = [Int]()
    var secondaryDiagonals = [Int]()
    
    for (index, row) in a.enumerated() {
        let primDiagonalNum = row[index]
        let secDiagonalIndex = a.count - index - 1
        let secDiagonalNum = row[secDiagonalIndex]
        
        primaryDiagonals.append(primDiagonalNum)
        secondaryDiagonals.append(secDiagonalNum)
    }
    
    let primDiagonalsSum = primaryDiagonals.reduce(0, +)
    let secDiagonalsSum = secondaryDiagonals.reduce(0, +)
    let absDifference = abs(primDiagonalsSum - secDiagonalsSum)
    return absDifference
}

diagonalDifference(a: inputs)
