let n = 6

func staircase(n: Int) -> Void {
    for index in 1...n {
        let spaces = String(repeating: " ", count: n-index)
        let hashChars = String(repeating: "#", count: index)
        print(spaces+hashChars)
    }
}
staircase(n: n)
