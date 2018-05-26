// Task 1
print("===Task 1===")
var student = ["Maksim Nosov": 5, "Aleksander Barkov": 4, "Aleksandr Ochenash": 4, "Steve Jobs": 3, "Tim Cook": 4]
student["Steve Jobs"] = 5
student.updateValue(5, forKey: "Tim Cook")
student["Bob Marley"] = 4
student["Bob Shnider"] = 3
student.removeValue(forKey: "Aleksander Barkov")
student.removeValue(forKey: "Aleksander Ochenash")
var sum = 0

for i in student {
    sum += i.value
}
print("Sum of grades = \(sum)")
print("Average of grades = \(sum / student.count)")

// Task 2
print("===Task 2===")
let daysOfMonths = [  "January": 31,
                      "February": 28,
                      "March": 31,
                      "April": 30,
                      "May": 31,
                      "June": 30,
                      "July": 31,
                      "August": 31,
                      "September": 30,
                      "October": 31,
                      "November": 30,
                      "December": 31 ]

for (key, value) in daysOfMonths {
    print("Days in \(key) = \(value)")
}
print("===============")

for key in daysOfMonths.keys {
    print("Days in \(key) = \(daysOfMonths[key]!)")
}

// Task 3
print("===Task 3===")
var chessBoard = [String: Bool]()
let chars = ["a", "b", "c", "d", "e", "f", "g", "h"]

for char in 0..<chars.count {
    for number in 1...8 {
        chessBoard["\(chars[char])\(number)"] = (char % 2 == number % 2) ? true : false
    }
}

let square = "f4"

if chessBoard[square] == true {
    print("Square is black")
} else {
    print("Square is white")
}


















