let constArray = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if array.isEmpty {
    print("array is empty")
}

array += constArray

array += ["e"]

array.append("f")

var array2 = array

array
array2

array2[0] = "1"

array
array2

//array[1...4] = ["0"]

array

array.insert("-", at: 3)

array

array.remove(at: 3)

array

//let test = [Int](repeatElement(100, count: 10))
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

var sum = 0
for i in 0..<money.count {
    print("index \(i) value = \(money[i])")
    sum += money[i]
}
sum
print("==================")
sum = 0

var index = 0
for i in money {
    print("index \(index) value = \(money[index])")
    sum += i
    index += 1
}
sum
print("==================")
sum = 0

for (index, value) in money.enumerated() {
    print("index \(index) value = \(value)")
    sum += value
}
sum




















