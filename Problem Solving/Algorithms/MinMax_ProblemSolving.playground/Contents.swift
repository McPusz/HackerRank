import Foundation

let nums = [1, 2, 3, 4, 5]

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArr = arr.sorted()
    let firstFour = sortedArr.prefix(4)
    let minSum = firstFour.reduce(0, +)
    let lastFour = sortedArr.suffix(4)
    let maxSum = lastFour.reduce(0, +)
    
    print("\(minSum) \(maxSum)")
}

miniMaxSum(arr: nums)
