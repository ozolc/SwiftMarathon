
//Task 1

var a1 = "5"
var a2 = "5a"
var a3 = "10"
var a4 = "10a"
var a5 = "20"
var sum = 0

if Int(a1) != nil {
    sum = sum + Int(a1)!
}

if let a2 = Int(a2) {
    sum = sum + a2
}

if Int(a3) != nil {
    sum = sum + Int(a3)!
}

if let a4 = Int(a4) {
    sum = sum + a4
}

if Int(a5) != nil {
    sum = sum + Int(a5)!
}

print("Sum of 5 variables is \(sum)")

 
// Task2
let statusNoContent : (statusCode: Int, message: String?, errorMessage: String?)
statusNoContent.statusCode = 250
statusNoContent.message = "No Content"
statusNoContent.errorMessage = nil

let statusForbidden : (statusCode: Int, message: String?, errorMessage: String?)
statusForbidden.statusCode = 403
statusForbidden.message = nil
statusForbidden.errorMessage = "Forbidden"

if statusNoContent.statusCode >= 200 && statusNoContent.statusCode <= 300 {
    print("Success response! Server returned \"\(statusNoContent.message!)\"")
} else {
    print("Error! Server returned \"\(statusNoContent.errorMessage!)\"")
}

if statusForbidden.statusCode >= 200 && statusForbidden.statusCode <= 300 {
    print("Success response! Server returned \"\(statusNoContent.message!)\"")
} else {
    print("Error! Server returned \"\(statusForbidden.errorMessage!)\"")
}

print("=====================")
let statusMessageIsNil : (message: String?, errorMessage: String?)
statusMessageIsNil.message = nil
statusMessageIsNil.errorMessage = "Error message"

if let message = statusMessageIsNil.message {
    print("Status message is \"\(message)\"")
    print("Error message is nil")
} else {
    print("Status message is nil")
    print("Error message is \"\(statusMessageIsNil.errorMessage!)\"")
}

print("=====================")
let statusErrorIsNil : (message: String?, errorMessage: String?)
statusErrorIsNil.message = "Success! 200 OK"
statusErrorIsNil.errorMessage = "Error message"

if let message = statusErrorIsNil.message {
    print("Status message is \"\(message)\"")
    print("Error message is nil")
} else {
    print("Status message is nil")
    print("Error message is \"\(statusErrorIsNil.errorMessage!)\"")
}


// Task 3
var student01 : (name: String?, pcName: String?, mark: Int?) = (nil, nil, nil)
var student02 : (name: String?, pcName: String?, mark: Int?) = (nil, nil, nil)
var student03 : (name: String?, pcName: String?, mark: Int?) = (nil, nil, nil)
var student04 : (name: String?, pcName: String?, mark: Int?) = (nil, nil, nil)
var student05 : (name: String?, pcName: String?, mark: Int?) = (nil, nil, nil)

student01.name = "Ivan"
student01.mark = 0
student02.name = "Sergey"
student02.pcName = "PC02"
student03.name = "Maksim"
student03.pcName = "PC03"
student03.mark = 5
student04.name = "Alexander"
student04.pcName = "PC04"
student04.mark = 4
student05.name = "Mikhail"

// Student 01
if let studentPCName = student01.pcName {
    print("\(student01.name!) has \(studentPCName)")
} else {
    print("\(student01.name!) doesn't have PC")
}
if let studentMark = student01.mark {
    print("\(student01.name!) has \(studentMark) mark")
} else {
    print("\(student01.name!) wasn't on previous lesson")
}
print("=====")

// Student 02
if student02.pcName != nil {
    print("\(student02.name!) has \(student02.pcName!)")
} else {
    print("\(student01.name!) doesn't have PC")
}
if student02.mark != nil {
    print("\(student02.name!) has \(student02.mark!) mark")
} else {
    print("\(student02.name!) wasn't on previous lesson")
}
print("=====")

// Student 03
if let studentPCName = student03.pcName {
    print("\(student03.name!) has \(studentPCName)")
} else {
    print("\(student03.name!) doesn't have PC")
}
if let studentMark = student03.mark {
    print("\(student03.name!) has \(studentMark) mark")
} else {
    print("\(student03.name!) wasn't on previous lesson")
}
print("=====")

// Student 04
if student04.pcName != nil {
    print("\(student04.name!) has \(student04.pcName!)")
} else {
    print("\(student04.name!) doesn't have PC")
}
if student04.mark != nil {
    print("\(student04.name!) has \(student04.mark!) mark")
} else {
    print("\(student04.name!) wasn't on previous lesson")
}
print("=====")

// Student 05
if student05.pcName != nil {
    print("\(student05.name!) has \(student05.pcName!)")
} else {
    print("\(student05.name!) doesn't have PC")
}
if let studentMark = student05.mark {
    print("\(student05.name!) has \(studentMark) mark")
} else {
    print("\(student05.name!) wasn't on previous lesson")
}









