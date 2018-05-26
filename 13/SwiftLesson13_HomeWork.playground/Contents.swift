struct Student {
    let name: String
    let surname: String
    let yearOfBirth: Int
    var averageMark: Int
}

class StudentClass {
    let name: String
    let surname: String
    let yearOfBirth: Int
    var averageMark: Int
    
    init(name: String, surname: String, yearOfBirth: Int, averageMark: Int) {
        self.name = name
        self.surname = surname
        self.yearOfBirth = yearOfBirth
        self.averageMark = averageMark
    }
}

let student1 = Student(name: "Maksim", surname: "Nosov", yearOfBirth: 1983, averageMark: 3)
let student2 = Student(name: "Aleksander", surname: "Barkov", yearOfBirth: 1973, averageMark: 5)
let student3 = Student(name: "Johny", surname: "Darco", yearOfBirth: 1980, averageMark: 2)
let student4 = Student(name: "Michael", surname: "Dudikov", yearOfBirth: 1977, averageMark: 4)
let student5 = Student(name: "Eduard", surname: "Nosov", yearOfBirth: 1973, averageMark: 5)

let journal = [student1, student2, student3, student4, student5]

func printStudents(student: [Student]) {
    var i = 0
    for s in student {
        i += 1
        print("\(i). Student \(s.name) \(s.surname) was born in \(s.yearOfBirth) and has average mark \(s.averageMark).")
    }
}
printStudents(student: journal)
print("=Студенты убыванию баллов=")
printStudents(student: journal.sorted(by: { (s1, s2) -> Bool in
    s1.averageMark > s2.averageMark
}))

print("=Студенты по фамилии и имени по возрастанию=")
var surnameArray = journal.sorted { (s1, s2) in
    if s1.surname != s2.surname {
        return s1.surname < s2.surname
    } else {
        return s1.name < s2.name
    }
}
printStudents(student: surnameArray)

var journal2 = journal

for var i in journal2 {
    i.averageMark = 0
}

print("=Первый массив journal=")
printStudents(student: journal)

print("=Второй массив journal2=")
printStudents(student: journal2)

// Те же действия только с классом
let studentClass1 = StudentClass(name: "Maksim", surname: "Nosov", yearOfBirth: 1983, averageMark: 3)
let studentClass2 = StudentClass(name: "Aleksander", surname: "Barkov", yearOfBirth: 1973, averageMark: 5)
let studentClass3 = StudentClass(name: "Johny", surname: "Darco", yearOfBirth: 1980, averageMark: 2)
let studentClass4 = StudentClass(name: "Michael", surname: "Dudikov", yearOfBirth: 1977, averageMark: 4)
let studentClass5 = StudentClass(name: "Eduard", surname: "Nosov", yearOfBirth: 1973, averageMark: 5)

let journalClass = [studentClass1, studentClass2, studentClass3, studentClass4, studentClass5]

func printStudents(student: [StudentClass]) {
    var i = 0
    for s in student {
        i += 1
        print("\(i). Student \(s.name) \(s.surname) was born in \(s.yearOfBirth) and has average mark \(s.averageMark).")
    }
}
    
print("=Студенты убыванию баллов=")
printStudents(student: journal.sorted(by: { (s1, s2) -> Bool in
    s1.averageMark > s2.averageMark
}))

var journalClass2 = journalClass

for i in journalClass2 {
    i.averageMark = 0
}

print("=Первый массив journalClass=")
printStudents(student: journalClass)

print("=Второй массив journalClass2=")
printStudents(student: journalClass2)

