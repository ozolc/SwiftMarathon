// Taks 1
print("===Task 1===")

func funcClosure(closure: () -> ()) {
    for i in 1...10 {
        print(i)
    }
    closure()
}
funcClosure {
    print("Closure was invoked")
}

// Taks 2
print("===Task 2===")

var array = [4, 6, 23, 11, 8, 65, 1, 3]
print(array.sorted(by: {$0 < $1}))
print(array.sorted(by: {$0 > $1}))

// Taks 3
print("===Task 3===")

var array2 = [34, 65, 1, 35, 9, 78, 5, 13]

func getInteger(array: [Int], closure: (Int, Int?) -> Bool) -> Int {
    var temp: Int?
    for value in array {
        if temp == nil || closure(value, temp) {
            temp = value
        }
    }
    return temp ?? 0
}

print("Maximum: ", getInteger(array: array2, closure: { $0 > $1!}))
print("Minimum: ", getInteger(array: array2, closure: { $0 < $1!}))

// Taks 4
print("===Task 4===")

func priority(string: String) -> Int {
    switch(string.lowercased()) {
    case "a", "e", "i", "o", "u", "y": return 0
    case "a"..."z": return 1
    case "0"..."9": return 9
    default: return 3
    }
}

let a = "r"
let b = "d"

switch (priority(string: a), priority(string: b)) {
case let(x, y) where x < y: print(a)
case let(x, y) where x < y: print(b)
default: print(a <= b ? a : b)
}

let str = "sfdjfdskajLDFSAL;KKJDSAfdsjallkdasfFDSLAKJdfsslkalkfsad3452"

var array3 = [String]()

for c in str {
    array3.append(String(c))
}
array3

let sorted =
    array3.sorted {
        switch (priority(string: $0), priority(string: $1)) {
        case let(x, y) where x < y: return true
        case let(x, y) where x > y: return false
        default: return $0.lowercased() <= $1.lowercased()
        }
}
