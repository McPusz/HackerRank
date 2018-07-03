
let a = [1, 2, 3, 4, 5]
let d = 4


func rotLeft(a: [Int], d: Int) -> [Int] {
    let moveStep = 1
    let moveSize = moveStep * d
    let fixedStep = moveSize%a.count
    var rotatedArray = a
    
    for (index, item) in a.enumerated() {
        
        let tempIndex = index - fixedStep 
        var newIndex = tempIndex

        if newIndex < 0 {
            newIndex = newIndex + a.endIndex
        }
    
        rotatedArray[newIndex] = item
    }
    
  return rotatedArray
}


let rotatedArray = rotLeft(a: a, d: d)
print(rotatedArray)
