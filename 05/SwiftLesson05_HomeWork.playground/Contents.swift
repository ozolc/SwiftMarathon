// Task 1
let second = 60
let hour = 24
let day = 30

let myDay = 15
var myMonth = 6

for month in 1...12 {
    if month == myMonth {
        if month > 1 {
            let duration = ((month - 1) * day * hour * second) + (myDay * hour * second)
            print("Since 01.01 have passed \(duration) seconds")
        } else {
            let duration = (month * day * hour * second) + (myDay * hour * second)
            print("Since 01.01 have passed \(duration) seconds")
        }
    }
}

// Task 2
for month in 1...12 {
    if month == myMonth {
        if month <= 3 { print("I was born in 1st quarter") }
        else if month <= 6 { print("I was born in 2nd quarter") }
        else if month <= 9 { print("I was born in 3rd quarter") }
        else { print("I was born in 4th quarter") }
    }
}

// Task 3

let letters = (a: 1, b: 1, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8)
let numbers = (1, 2, 3, 4, 5, 6, 7, 8)

let chosenLetter = letters.e
let chosenNumber = numbers.1

if chosenLetter % 2 == chosenNumber % 2 {
    print("This is black square")
} else {
    print("This is white square")
}
















