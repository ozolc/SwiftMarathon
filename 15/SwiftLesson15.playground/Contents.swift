
let MaxNameLength = 20

class Human {
    
    var name: String {
        didSet {
            if name.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my entire life..."
    
    class var maxAge: Int {
        return 100
    }
    
    static var totalHumans = 0
    
    var age: Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Human.totalHumans += 1
    }
}

enum Direction {
    
    static let enumDescription = "Directions in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical: Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorizontal: Bool {
        return !isVertical
    }
}

let d = Direction.Right
d.isVertical
d.isHorizontal

Direction.enumDescription

struct Cat {
    
    var name: String {
        didSet {
            if name.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    static let maxAge = 20
    static var totalCats = 0
    
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats += 1
    }
    
}

let human = Human(name: "Peter", age: 40)
let human1 = Human(name: "Peter1", age: 40)
Human.totalHumans

var cat = Cat(name: "Whiten", age: 10)

human.age = 1000
cat.age = 50

cat.age
Cat.totalCats

let cat1 = Cat(name: "Whiten1", age: 10)
let cat2 = Cat(name: "Whiten2", age: 10)
Cat.totalCats





