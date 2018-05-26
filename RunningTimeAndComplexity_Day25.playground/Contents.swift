import Foundation


let numOfTestCases = 3 //Int(readLine()!)
let testCases = [12, 5, 3]

func isPrime(_ num: Int) -> Bool {
    return true
}

for index in 0..<numOfTestCases {
    let testCase = testCases[index] //Int(readLine()!)
    let testCaseIsPrime = isPrime(testCase)
    testCaseIsPrime ? print("Prime") : print("Not prime")
}

