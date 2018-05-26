//Task 1.1
print("=====Task 1.1=====")
let monthDay = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for i in monthDay {
    print(i)
}

//Task 1.2
print("=====Task 1.2=====")
let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for i in 0..<months.count {
    print("\(months[i]) has \(monthDay[i]) days")
}

//Task 1.3
print("=====Task 1.3=====")
let tupleMonths = [ ("January", 31),
                    ("February", 28),
                    ("March", 31),
                    ("April", 30),
                    ("May", 31),
                    ("June", 30),
                    ("July", 31),
                    ("August", 31),
                    ("September", 30),
                    ("October", 31),
                    ("November", 30),
                    ("December", 31) ]

for i in tupleMonths {
    print(i)
}

//Task 1.4
print("=====Task 1.4=====")
var index = tupleMonths.count
for _ in 0..<tupleMonths.count {
    index -= 1
    print(tupleMonths[index])
}

//Task 1.5
print("=====Task 1.5=====")
let chosenDay = (month: "June", day: 15)
var sum = 0

for i in tupleMonths {
    if chosenDay.month == i.0 { break }
    sum += i.1
}
sum += chosenDay.day
print("To my birthday remain \(sum) days.")

//Task 2
print("=====Task 2=====")
var a1 = "5"
var a2 = "5a"
var a3 = "10"
var a4 = "10a"
var a5 = "20"
sum = 0

var array : [Int?] = [Int(a1), Int(a2), Int(a3), Int(a4), Int(a5)]

for i in array {
    if let k = i {
        sum = sum + k
    }
}
print("With optional binding sum equal \(sum)")

sum = 0
for i in array {
    if i != nil {
        sum = sum + i!
    }
}
print("With force unwrapping sum equal \(sum)")

sum = 0
for i in array {
    let i = i ?? 0
    sum = sum + i
}
print("With nil-coalescing operator sum equal \(sum)")

//Task 3
print("=====Task 3=====")
var arrayStr = [String]()
let alphabet = "abcdefghigklmnopqrstuvwxyz"

for char in alphabet {
    arrayStr.insert(String(char), at: 0)
}
print(arrayStr)


