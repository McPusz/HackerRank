import Foundation

let numOfSets = 3
let sets = ["5 2","8 5","2 2"]

func bitwiseAND(n: Int, k: Int) -> Int {
    let maxRange = n > k ? n : k
    let minRange = n > k ? k : n
    var ands: [Int] = []
    for aValue in 1...maxRange {
        guard aValue+1 <= maxRange else { continue }
        for bValue in aValue+1...maxRange {
            let and = aValue&bValue
            ands.append(and)
        }
    }
    
    let andsLessThanMin = ands.filter{$0 < minRange}
    let maxPossibleValue = andsLessThanMin.max()
    return maxPossibleValue!
}

for tItr in 0..<numOfSets {
    let nkTemp = sets[tItr]
    let nk = nkTemp.split(separator: " ").map{ String($0) }
    
    guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
        else { fatalError("Bad input") }
    
    guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
        else { fatalError("Bad input") }
    
//    let max = bitwiseAND(n: n, k: k)
//    print(max)
    let max = ((k-1 | k) <= n) ? k-1 : k-2
    print(max)
}
