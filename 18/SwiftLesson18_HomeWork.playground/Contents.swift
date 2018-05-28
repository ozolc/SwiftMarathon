/* 1. У нас есть базовый клас "Артист" и у него есть имя и фамилия. И есть метод "Выступление". У каждого артиста должно быть свое выступление: танцор танцует, певец поет и тд. А для художника, что бы вы не пытались ставить, пусть он ставит что-то свое (пусть меняет имя на свое артистическое). Когда вызываем метод "выступление" показать в консоле имя и фамилию артиста и собственно само выступление.
 Полиморфизм используем для артистов. Положить их всех в массив, пройтись по нему и вызвать их метод "выступление" */
print("===Task 1===")
class Artist {
    var firstName: String = ""
    var lastName: String = ""
    var action: String = ""
    
    func printAction() -> String {
        return firstName + " " + lastName + " is " + action
    }
}

class Dancer: Artist {
    override func printAction() -> String {
        return super.printAction()
    }
}

class Painter: Artist {
    override var firstName: String {
        set {
            super.firstName = "Painter " + newValue
        }
        
        get {
            return super.firstName
        }
    }
}

let artist = Artist()
artist.firstName = "Tom"
artist.lastName = "Cruse"
artist.action = "filming"
artist.printAction()

let dancer = Dancer()
dancer.firstName = "Mike"
dancer.lastName = "Teder"
dancer.action = "dancing"
dancer.printAction()

let painter = Painter()
painter.firstName = "Sam"
painter.lastName = "Fisher"
painter.action = "painting"
painter.printAction()

let array = [artist, dancer, painter]

for value in array {
    print(value.printAction())
}

/* 2. Создать базовый клас "транспортное средство" и добавить три разных проперти: скорость, вместимость и стоимость одной перевозки (computed). Создайте несколько дочерних класов и переопределите их компютед проперти у всех. Создайте класс самолет, корабль, вертолет, машина и у каждого по одному объекту. В компютед пропертис каждого класса напишите свои значения скорости, вместимости, стоимости перевозки. + у вас должен быть свой метод который считает сколько уйдет денег и времени что бы перевести из пункта А в пункт В определенное количество людей с использованимем наших транспортных средств. Вывести в консоль результат (как быстро сможем перевести, стоимость, количество перевозок).
 Используем полиморфизм */
print("===Task 2===")

class Vehicle {
    var speed: Double {
        get { return self.speed }
        set { self.speed = newValue }
    }
    
    var capacity: Int {
        get { return self.capacity }
        set { self.capacity = newValue }
    }
    
    var cost: Double {
        get { return self.cost }
        set { self.cost = newValue }
    }
    
    var name: String {
        get { return self.name }
        set { self.name = newValue }
    }
}

class Plane: Vehicle {
    override var speed: Double {
        get { return 1000 }
        set { self.speed = newValue }
    }
    
    override var capacity: Int {
        get { return 90 }
        set { self.capacity = newValue }
    }
    
    override var cost: Double {
        get { return 30000 }
        set { self.cost = newValue }
    }
    
    override var name: String {
        get { return "Plane" }
        set { self.name = newValue }
    }

}

class Ship: Vehicle {
    override var speed: Double {
        get { return 80 }
        set { self.speed = newValue }
    }
    
    override var capacity: Int {
        get { return 300 }
        set { self.capacity = newValue }
    }
    
    override var cost: Double {
        get { return 15000 }
        set { self.cost = newValue }
    }
    
    override var name: String {
        get { return "Ship" }
        set { self.name = newValue }
    }
    
}

class Helicopter: Vehicle {
    override var speed: Double {
        get { return 200 }
        set { self.speed = newValue }
    }
    
    override var capacity: Int {
        get { return 8 }
        set { self.capacity = newValue }
    }
    
    override var cost: Double {
        get { return 25000 }
        set { self.cost = newValue }
    }
    
    override var name: String {
        get { return "Helicopter" }
        set { self.name = newValue }
    }
    
}

class Car: Vehicle {
    override var speed: Double {
        get { return 120 }
        set { self.speed = newValue }
    }
    
    override var capacity: Int {
        get { return 4 }
        set { self.capacity = newValue }
    }
    
    override var cost: Double {
        get { return 5000 }
        set { self.cost = newValue }
    }
    
    override var name: String {
        get { return "Car" }
        set { self.name = newValue }
    }
    
}

let plane = Plane()
let ship = Ship()
let helicopter = Helicopter()
let car = Car()

let arrayOfCargo = [plane, ship, helicopter, car]

func countShipmentFor(_ passangers: Int, distance: Double) {
    for cargo in arrayOfCargo {
        var countOfTour = 1
        var price = cargo.cost
        var time = distance / cargo.speed
        
        if cargo.capacity < passangers {
            countOfTour = passangers / cargo.capacity
            price = cargo.cost * Double(countOfTour) * 1.5
            time = Double(countOfTour) * 1.5
        }
        
        print("\(cargo.name) spend \(time) hours. Cost of it is \(price). Count of tours is \(countOfTour).")
        
    }
}

countShipmentFor(50, distance: 5500)

/* Пять классов: люди, собаки, жирафы, обезьяны и крокодилы. Сделайте по парочке объектов каждого класса. Создать такой родительский класс, который будет группировать их. Создать массив с пресмыкающимися и посчитать их количество, потом также создать массив и посчитать сколько четвероногих, животных и живых. Массивы не содержат тип Any. */
print("===Task 3===")

class AliveCreature {
    static var countOfAlive = 0
}

class FourLegged: AliveCreature {
    static var fourLegged = 0
}

class Animals: FourLegged {
    static var animals = 0
}

class Reptiles: AliveCreature {
    static var reptiles = 0
}

/// Создание подклассов =: люди, собаки, жирафы, обезьяны и крокодилы
class Human: AliveCreature { }
class Dog: Animals { }
class Giraffe: Animals { }
class Monkey: Animals { }
class Crocodile: Reptiles { }

let human1 = Human(), human2 = Human()
let dog1 = Dog(), dog2 = Dog()
let giraffe1 = Giraffe(), giraffe2 = Giraffe()
let monkey1 = Monkey(), monkey2 = Monkey()
let crocodile1 = Crocodile(), crocodile2 = Crocodile()

var beings = [human1, human2, dog1, dog2, giraffe1, giraffe2, monkey1, monkey2, crocodile1, crocodile2]

for creature in beings {
    AliveCreature.countOfAlive += 1
    
    switch creature {
    case is Animals: do { Animals.animals += 1; FourLegged.fourLegged += 1 }
    case is Reptiles: Reptiles.reptiles += 1
        
    default: break
    }
}

print("Живых существ: \(AliveCreature.countOfAlive)")
print("Четвероногих: \(FourLegged.fourLegged)")
print("Животных: \(Animals.animals)")
print("Рептилий: \(Reptiles.reptiles)")









