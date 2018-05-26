
let total = ((5 + 6) - (8 * 3)) - (5 / 10)

let div = 10 / 3
let rest = 13 % 3

382942843723 % 101

var small: UInt8 = 0xff

//small = 0
//small = small - 1

// &+ &* &- &%
small = small &+ 5

let str = "Hi, " + "there!"

let a = 6
let b = 3

// >, <, >=, <=, ==, !=, ===, !==
if (a != b) {
    print("yes")
} else {
    print("no")
}

var c : Int

/*
if a < b {
    c = a
} else {
    c = b
}
*/

c = a > b ? a : b

let text = "123"
let n = Int(text)

/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/
/*
if let opt = n {
    c = opt
} else {
    c = 0
}
*/

c = n ?? 5

var sum = 5
sum = sum + 1
sum += 1

var good = true

good = !good

// && (ЛОГИЧЕСКОЕ "И") = *, || (ЛОГИЧЕСКОЕ "ИЛИ")= +
if good  {
    print("good")
} else {
    print("bad")
}

/*
true && true = true
true && false = false
false && true = false
false && false = false

true || true = true
true || false = true
false || true = true
false || false = false
*/

let i = 5
let j = 6
let k = 7
let m = 8

if (i < 3) && (j > k) && ((m != k) || m > i) {
    
}

0...5
0..<5

for i in 0..<5 {
    print("\(i)")
}






















