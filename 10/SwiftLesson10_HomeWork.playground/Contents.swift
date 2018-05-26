// Task 1
print("===Task 1===")
func Gemini() -> Character {
    return "\u{264a}"
}

func Sagittarius() -> Character {
    return "\u{2650}"
}

func Taurus() -> Character {
    return "\u{2649}"
}

print("""
Знаки зодиака:
Близнец - \(Gemini())
Стрелец - \(Sagittarius())
Телец - \(Taurus())
""")

// Task 2
print("===Task 2===")

func getColor(letter: String, number: Int) -> String {
    
    let char = ["A", "B", "C", "D", "E", "F", "G", "H"]
    var i = 0
    
    for ch in char {
        i += 1
        if ch == letter.uppercased() && (number > 0 && number < 9) {
            return (i % 2 == number % 2 ) ? "Color of square is black" : "Color of square is white"
        }
    }
    return "Wrong point. Not in range."
}

let pointE2 = getColor(letter: "e", number: 2)
let pointA5 = getColor(letter: "a", number: 5)
print(pointE2)
print(pointA5)

// Task 3
print("===Task 3===")

func returnArray(array: [Int]) -> [Int] {
    var tempArray = [Int]()
    for i in array {
        tempArray.insert(i, at: 0)
    }
    return tempArray
}

func returnSequence(seq: Int...) -> [Int] {
    return returnArray(array: seq)
}

let array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(returnArray(array: array))
print(returnSequence(seq: 9, 8, 7, 6, 5))

// Task 4
print("===Task 4===")

var array4 = [4, 6, 1, 8, 33, 98, 12]

func arrayInOut(_ array: inout [Int]) {
    var tempArray = [Int]()
    for i in array {
        tempArray.insert(i, at: 0)
    }
    array = tempArray
}
arrayInOut(&array4)
array4

// Task 5
print("===Task 5===")

let str = "Ма.Ма 3мы?ла !рам:у0"

func substString(input: String) -> String{
    let number = ["1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine", "0": "zero"]
    var stroka = String()
    for letter in input.lowercased() {
        switch letter {
        case "а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е": stroka.append(String(letter).uppercased())
        case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ": stroka.append(String(letter).lowercased())
        case "0"..."9" where number[String(letter)] != nil: stroka.append(number[String(letter)]!)
        case ".", ",", ";", ":", "!", "?", "-", "(", ")", "\"": stroka.append(" ")
        default: break
        }
    }
    return stroka
}

print(substString(input: str))










































