import Foundation

let inputGrades = [4, 73, 67, 38, 33]

func gradingStudents(grades: [Int]) -> [Int] {
    let roundedGrades =  grades.map { (grade) -> Int in
        if grade < 38 {
            return grade
        }
        let nextMultiple = nextFiveMultiple(of: grade)
        if nextMultiple - grade < 3 {
            return nextMultiple
        }
        
        return grade
        
    }
    
    return roundedGrades
}

private func nextFiveMultiple(of number: Int) -> Int {
    if number % 5 == 0 {
        return number
    }
    
    var num = number
    while num % 5 != 0 {
        num += 1
    }
    
    return num
}

gradingStudents(grades: inputGrades)
