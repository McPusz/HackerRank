import Foundation

let numOfTestCases = 3 //Int(readLine()!)
let testCases = [12, 5, 3]

enum AlgoTypes {
    case naiveApproach
    case naiveApproachTwo
    case chineseTest
    case hackerrank
}

func isPrime(_ num: Int, algoType: AlgoTypes) -> Bool {
    guard num > 1 else { return false }
    switch algoType {
    case .naiveApproach:
        return isPrimeNaiveApproach(num)
    case .naiveApproachTwo:
        return isPrimeNaiveApproachTwo(num)
    case .chineseTest:
        return isPrimeChineseTest(num)
    case .hackerrank:
        return isPrimeHackerrank(num)
    }
}


func isPrimeNaiveApproach(_ num: Int) -> Bool {
    let g = Int(round(sqrt(Double(num)))) //Divisibility limit
    var i = 2
    while i <= g {
        if num%i == 0 {
            return false
        }
        i += 1
    }
    return true
}

func isPrimeHackerrank(_ p: Int) -> Bool {
    guard p != 1 else { return false }
    guard p != 2 && p != 3 else { return true }
    let sq = Int(sqrt(Double(p)))
    for i in 2...sq {
        if p % i == 0 {
            return false
        }
    }
    return true
}

func isPrimeNaiveApproachTwo(_ num: Int) -> Bool {
    guard num != 2 else { return true }
    guard num % 2 != 0 else { return false }
    let g = Int(round(sqrt(Double(num))))
    var i = 3
    while i <= g {
        if num % i == 0 { return false }
        i += 2
    }
    return true
}

func isPrimeChineseTest(_ num: Int) -> Bool {
    let dNum = Double(num)
    return Int(pow(2.0, dNum)) % num == 2
}

for index in 0..<numOfTestCases {
    let testCase = testCases[index] //Int(readLine()!)
    let testCaseIsPrime = isPrime(testCase, algoType: .chineseTest)
    testCaseIsPrime ? print("Prime") : print("Not prime")
}

