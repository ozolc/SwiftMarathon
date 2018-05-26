// Task 1
import Foundation

let currentDate = Date()
let calendar = Calendar.current
let currentYear = calendar.component(.year, from: currentDate)

struct Student {
    
    var dateOfBirth: DateOfBirth
    
    var firstName: String {
        didSet {
            firstName = firstName.capitalized
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
 
}

struct DateOfBirth {
    let day: Int
    let month: Int
    let year: Int
    
    var age: Int {
        get {
            return currentYear - year
        }
    }
    
    var study: Int {
        get {
            return age > 6 ? age - 6 : 0
        }
    }
    
}

let dob = DateOfBirth(day: 15, month: 06, year: 1983)
var student1 = Student(dateOfBirth: dob, firstName: "Maksim", lastName: "Nosov")

print("\(student1.firstName) \(student1.lastName) в возрасте \(student1.dateOfBirth.age)" +
    " учится на протяжении \(student1.dateOfBirth.study)")
student1.lastName
student1.dateOfBirth.study
student1.dateOfBirth.age
