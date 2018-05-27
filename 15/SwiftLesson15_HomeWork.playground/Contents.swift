// Task 1
/* 1. Создать структуру “Описание файла” содержащую свойства:
 - путь к файлу
 - имя файла
 - максимальный размер файла на диске
 - путь к папке, содержащей этот файл
 - тип файла (скрытый или нет)
 - содержимое файла (можно просто симулировать контент)
 
 Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
 */

struct descriptionFile {
    static let maxSize: Int = 0
    
    let name: String
    
    let pathToFile: String
    let pathToFolder: String
    let iHidden: Bool
    var content: String
}

// Task 2
/* 2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет. */

enum Color: Int {
    case Black = 0x000000
    case White = 0xFFFFFF
    case Red = 0xFF0000
    case Lime = 0x00FF000
    case Blue = 0x0000FF
    case Yellow = 0xFFFF00
    case Cyan = 0x00FFFF
    case Magenta = 0xFF00FF
    
    static let firstColor = Color.Black
    static let lastColor = Color.Magenta
    static var colorCount = 8
}

let color = Color.Blue

color.rawValue
Color.colorCount
Color.firstColor.rawValue
Color.lastColor.rawValue

// Task 3
/* 3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
    - минимальный и максимальный возраст каждого объекта
    - минимальную и максимальную длину имени и фамилии
    - минимально возможный рост и вес
    - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса */

var CountHuman = 0
class Human {
    class var minAge: Int { return 0 }
    class var maxAge: Int { return 120 }
    
    class var minFirstName: Int { return 2 }
    class var maxFirstName: Int { return 50 }
    
    class var minSecondName: Int { return 2 }
    class var maxSecondName: Int { return 50 }
    
    class var minHeight: Double { return 10.0 }
    class var maxHeight: Double { return 300.0 }
    
    class var minWeight: Double { return 10.0 }
    class var maxWeight: Double { return 400.0 }
    
    var firstName: String {
        didSet {
            if firstName.count < Human.minFirstName || firstName.count > Human.maxFirstName {
            return firstName = oldValue
            }
        }
    }
    var secondName: String {
        didSet {
            if secondName.count < Human.minSecondName || secondName.count > Human.maxSecondName {
                return secondName = oldValue
            }
        }
    }
    var age: Int {
        didSet {
            return age = (age <= Human.minAge || age >= Human.maxAge) ? oldValue : age
        }
    }
    var height: Double {
        didSet {
            return height = (height <= Human.minHeight || height >= Human.maxHeight) ? oldValue : height
        }
    }
    var weight: Double {
        didSet {
            return weight = (weight <= Human.minWeight || weight >= Human.maxWeight) ? oldValue : weight
        }
    }
    
    init (firstName: String, secondName: String, age: Int, height: Double, weight: Double) {
        self.firstName = firstName
        self.secondName = secondName
        self.age = age
        self.height = height
        self.weight = weight
        CountHuman += 1
    }
}
let human01 = Human(firstName: "Maksim", secondName: "Nosov", age: 34, height: 178, weight: 75)
let human02 = Human(firstName: "Aleksander", secondName: "Barkov", age: 45, height: 170, weight: 65)

print("Количество созданных объектов класса Human = \(CountHuman)")




















