// Task 1
print("Range of Int = (\(Int.min) ... \(Int.max))")
print("Range of Int8 = (\(Int8.min) ... \(Int8.max))")
print("Range of Int16 = (\(Int16.min) ... \(Int16.max))")
print("Range of Int32 = (\(Int32.min) ... \(Int32.max))")
print("Range of Int64 = (\(Int64.min) ... \(Int64.max))")
print("Range of UInt = (\(UInt.min) ... \(UInt.max))")
print("Range of UInt8 = (\(UInt8.min) ... \(UInt8.max))")
print("Range of UInt16 = (\(UInt16.min) ... \(UInt16.max))")
print("Range of UInt32 = (\(UInt32.min) ... \(UInt32.max))")
print("Range of UInt64 = (\(UInt64.min) ... \(UInt64.max))")

// Task 2
let intValue = 15
let floatValue: Float = 15.1
let doubleValue = 15.2

let sumInt = Int(Double(intValue) + Double(floatValue) + doubleValue)
let sumFloat = Float(intValue) + floatValue + Float(doubleValue)
let sumDouble = Double(intValue) + Double(floatValue) + doubleValue

// Task 3
if Double(sumInt) > sumDouble {
    print("Constant 'sumInt' more than 'sumDouble''")
} else if Double(sumInt) == sumDouble {
    print("Constant 'sumInt' equal 'sumDouble'")
} else {
    print("Constant 'sumInt' less than 'sumDouble'")
}

