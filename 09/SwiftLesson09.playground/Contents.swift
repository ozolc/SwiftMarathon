/*
if age == 21 {
    
} else if age == 22 {
    
} else {
    
}
*/

/*
mainLoop: for _ in 0...1000 {
    
    for i in 0..<20 {
        
        if (i < 15) {
            //continue
        }
        
        if i == 10 {
            break mainLoop
        }
        print(i)
    }
}
*/ 
var age = 67
var name = "Alex"

switch age {
case 0...16: print("школота")
case 17...21: print("студент")
case 22...50: break
case 51, 56, 57, 60:
    print("Сработало")
    
default: break
}

switch name {
case "Alex" where age < 50:
    print("Hi buddy")
case "Alex" where age >= 50:
    print("I don't know you")
default:
    break
}

var optional: Int? = 5

if let a = optional {
    print("\(a) != nil")
}

let tuple = (name, age)

switch tuple {

case ("Alex", 60): print("Hi Alex 60")
case ("Alex", 59): print("Hi Alex 59")
    
case (_, let number) where number >= 65 && number <= 70:
    print("Hi old man")
    
case ("Alex", _):  print("Hi Alex")
    
default: break
}

let point = (5, -6)

switch point {
    
case let (x, y) where x == y:
    print("x == y")
case let (x, y) where x == -y:
    print("x == -y")
case let (_, y) where y < 0:
    print("y < 0")
    
default: break
}

let array: [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[0] {
case _ as Int: print("Int")
case _ as Float: print("Float")
case _ as Double: print("Double")
    
default: break
}










