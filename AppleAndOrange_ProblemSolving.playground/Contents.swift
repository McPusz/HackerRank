import Foundation

// Complete the countApplesAndOranges function below.
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var aFallen = 0, oFallen = 0 // apples & oranges that fall on house
    var dApples: [Int] = [] // distance at which each apple falls from tree
    var dOranges: [Int] = [] // distance at which each orange falls from tree
    dApples += apples.map{a+$0}
    dOranges += oranges.map{b+$0}
    
    let applesInHouseRange = dApples.filter{s...t ~= $0}
    let orangesInHouseRange = dOranges.filter{s...t ~= $0}
    aFallen = applesInHouseRange.count
    oFallen = orangesInHouseRange.count
    print(aFallen)
    print(oFallen)
}

let stTemp = "7 11"
let st = stTemp.split(separator: " ").map{ String($0) }

guard let s = Int(st[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let t = Int(st[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

let abTemp = "5 15"
let ab = abTemp.split(separator: " ").map{ String($0) }

guard let a = Int(ab[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let b = Int(ab[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

let mnTemp = "3 2"
let mn = mnTemp.split(separator: " ").map{ String($0) }

guard let m = Int(mn[0].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

guard let n = Int(mn[1].trimmingCharacters(in: .whitespacesAndNewlines))
    else { fatalError("Bad input") }

let applesTemp = "-2 2 1"
let apples: [Int] = applesTemp.split(separator: " ").map {
    if let applesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return applesItem
    } else { fatalError("Bad input") }
}

guard apples.count == m else { fatalError("Bad input") }

let orangesTemp = "5 -6"
let oranges: [Int] = orangesTemp.split(separator: " ").map {
    if let orangesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return orangesItem
    } else { fatalError("Bad input") }
}

guard oranges.count == n else { fatalError("Bad input") }

countApplesAndOranges(s: s, t: t, a: a, b: b, apples: apples, oranges: oranges)
