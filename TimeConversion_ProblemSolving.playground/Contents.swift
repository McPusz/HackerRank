import Foundation

let inputTime = "07:05:45PM"

func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let date = dateFormatter.date(from: s)
    let militaryFormat = "HH:mm:ss"
    dateFormatter.dateFormat = militaryFormat
    let formattedString = dateFormatter.string(from: date!)
    
    return formattedString
}

timeConversion(s: inputTime)
