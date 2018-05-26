
import Foundation

struct Student {
    var firstName: String {
        
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
            
            firstName = firstName.capitalized
        }
        
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
        
    }
    
    var fullName: String {
        
        get {
            return firstName + " " + lastName
        }
        set {
           print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
        
    }
    
}

var student = Student(firstName: "Alex", lastName: "Skutarenko")

student.firstName
student.lastName
student.fullName

student.firstName = "sam"
student.firstName

student.firstName
student.lastName
student.fullName

student.fullName = "IVAN IVAnov"
student.firstName
student.lastName
student.fullName



