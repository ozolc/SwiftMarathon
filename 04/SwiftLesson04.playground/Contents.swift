var apples : Int? = 5

if apples == nil {
    print("nil apples")
} else {
//    print(apples)
    
    let a = apples! + 2
}

if var number = apples {
    number = number + 2
}

let age = "60"

if Int(age) != nil {
    let ageNumber = Int(age)!
}

if let ageNumber = Int(age) {
    ageNumber
}

//Int
//Int?
//Int!

var apples2 : Int! = nil

apples2 = 2

// assert(apples2 != nil, "oh no!!!")

apples2 = apples2 + 5










