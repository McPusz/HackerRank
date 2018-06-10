import Foundation



let N = 6

let inputs = ["riya riya@gmail.com",
    "julia julia@julia.me",
    "julia sjulia@gmail.com",
    "julia julia@gmail.com",
    "samantha samantha@gmail.com",
    "tanya tanya@gmail.com"]

var emailsDict: [String: String] = [:]

for NItr in 0..<N {
    let firstNameEmailIDTemp = inputs[NItr]
    let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }
    
    let firstName = firstNameEmailID[0]
    
    let emailID = firstNameEmailID[1]
    emailsDict[emailID] = firstName
}

func gmailUsers() -> [String: String] {
    let gmailUsers = emailsDict.filter{$0.key.hasSuffix("@gmail.com")}
    return gmailUsers
}

func sortedNames() -> [String] {
    return gmailUsers().values.sorted()
}

sortedNames().forEach{print($0)}
