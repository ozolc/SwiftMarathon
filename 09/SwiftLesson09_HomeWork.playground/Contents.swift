// Task 1
print("===Task 1===")
let str = "Статья - это жанр журналистики, в котором автор ставит задачу проанализировать общественные ситуации, процессы, явления, прежде всего с точки зрения закономерностей, лежащих в их основе. Такому жанру как статья присуща шири практических обобщений, глубокий анализ фактов и явлений, четкая социальная направленность."
var vowel = 0
var consonant = 0
var number = 0
var punctuationMark = 0

for letter in str {
    switch letter {
    case "а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е": vowel += 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ": consonant += 1
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0": number += 1
    case ".", ",", ";", ":", "!", "?", "-", "(", ")", "\"": punctuationMark += 1
    default: break
    }
}

print("Count of vowels equal \(vowel)")
print("Count of consonants equal \(consonant)")
print("Count of numbers equal \(number)")
print("Count of punctuation marks equal \(punctuationMark)")

// Task 2
print("===Task 2===")

let age = 35

switch age {
case 0...1: print("Младенчество")
    case 1...3: print("Раннее детство")
    case 4...7: print("Дошкольный возраст")
    case 8...12: print("Школьный возраст")
    case 13...19: print("Юность")
    case 20...35: print("Молодость")
    case 36...59: print("Взрослость")
    default: print("Старость")
}

// Task 3
print("===Task 3===")

let student = (surname: "Иванов", name: "Петр", middle: "Сергеевич")

switch student {
case _ where student.name.hasPrefix("А") || student.name.hasPrefix("О"): print("Студент \(student.name)")
    case _ where student.middle.hasPrefix("В") || student.middle.hasPrefix("Д"): print("Студент \(student.name) \(student.middle)")
    case _ where student.surname.hasPrefix("Е") || student.surname.hasPrefix("З"): print("Студент \(student.surname)")
default:
    print("Студент \(student.name) \(student.middle) \(student.surname)")
}

// Task 4
print("===Task 4===")

let point = (x: 3, y: 4)

switch point {
case (2...4, 6): print("x:\(point.x), y:\(point.y) = Ранил")
case (7, 3), (9, 4): print("x:\(point.x), y:\(point.y) = Убил")
default: print("x:\(point.x), y:\(point.y) = Промахнулся")
}
























