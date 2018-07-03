import Foundation

let actualDateString = "9 6 2015"//readLine()!
let expectedDateString = "6 6 2015"//readLine()!

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "d M yyyy"

let actualDate = dateFormatter.date(from: actualDateString)!
let expectedDate = dateFormatter.date(from: expectedDateString)!

let calendar = Calendar.current
let actualDateComponents = calendar.dateComponents([.day, .month, .year], from: actualDate)
let expectedDateComponents = calendar.dateComponents([.day, .month, .year], from: expectedDate)
let actualMonth = actualDateComponents.month!, actualYear = actualDateComponents.year!, actualDay = actualDateComponents.day!
let expectedMonth = expectedDateComponents.month!, expectedYear = expectedDateComponents.year!, expectedDay = expectedDateComponents.day!

var fine = 0
let dayFine = 15
let monthFine = 500
let yearFine = 10000

func isSameYear() -> Bool {
    return actualYear == expectedYear
}

func isSameMonth() -> Bool {
    return actualMonth == expectedMonth && isSameYear()
}

func daysLate() -> Int {
    return actualDay - expectedDay
}

func monthsLate() -> Int {
    return actualMonth - expectedMonth
}

if expectedDate < actualDate {
    if isSameMonth() {
        fine = dayFine * daysLate()
    } else if isSameYear() {
        fine = monthFine * monthsLate()
    } else {
        fine = yearFine
    }
}

print(fine)
