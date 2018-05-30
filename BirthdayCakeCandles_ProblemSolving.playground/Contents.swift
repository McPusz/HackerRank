import Foundation
let age = 4
let candles = [3,2,1,3]

func birthdayCakeCandles(ar: [Int]) -> Int {
    let sortedArr = ar.sorted()
    let highestNum = sortedArr.last!
    let highestNumsArr = sortedArr.filter{$0 == highestNum }
    return highestNumsArr.count
}

birthdayCakeCandles(ar: candles)
