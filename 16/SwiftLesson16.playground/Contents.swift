struct Point {
    var x: Int
    var y: Int
    
    /*
    mutating func moveByX(x: Int, andY y: Int) {
        self.x += x
        self.y += y
    } */
    
    mutating func moveByX(x: Int, andY y: Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }
}

enum Color {
    
    static func numberOfElements() -> Int {
        self.printIt()
        Color.printIt()
        return 2
    }
    
    case White
    case Black
    
    mutating func invert() -> Color {
        if self == .White {
            self = .Black
        } else {
            self = .White
        }
        // self = self == .White ? .Black : .White
        self.printIt()
        return self
    }
    
    func printIt() {
        if self == .White {
            print("White")
        } else {
            print("Black")
        }
    }
    
    static func printIt() {
        print("enum")
    }
}

var c = Color.White

c.printIt()
c.invert().printIt()
c.invert().printIt()
c.invert().printIt()
print(Color.numberOfElements())

//func move(point: Point, byX: Int, andY: Int) -> Point {
//    Point.x += byX
//    point.y += andY
//    return point
//}
var p = Point(x: 1, y: 1)

p.moveByX(x: 5, andY: 7)

print(p)
