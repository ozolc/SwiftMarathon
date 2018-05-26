import Foundation
// Task1
let str1 = "5"
let str2 = "2"
let str3 = "3a"
let str4 = "8b"
let str5 = "6"

let strToInt1 = Int(str1) ?? 0
let strToInt2 = Int(str2) ?? 0
let strToInt3 = Int(str3) ?? 0
let strToInt4 = Int(str4) ?? 0
let strToInt5 = Int(str5) ?? 0

let sum = strToInt1 + strToInt2 + strToInt3 + strToInt4 + strToInt5

let string1 = (Int(str1) != nil) ? str1 : "nil"
let string2 = (Int(str2) != nil) ? str2 : "nil"
let string3 = (Int(str3) != nil) ? str3 : "nil"
let string4 = (Int(str4) != nil) ? str4 : "nil"
let string5 = (Int(str5) != nil) ? str5 : "nil"

print("\(string1) + \(string2) + \(string3) + \(string4) + \(string5) = \(sum)")

print("\(string1)" + " + " + "\(string2)" +  " + " + "\(string3)" +  " + " + "\(string4)" +  " + " + "\(string5)" + " = " + "\(sum)")

//Task 2
let char1 = "\u{1F64C}"
let char2 = "\u{1F383}"
let char3 = "\u{1F607}"
let char4 = "\u{1F6A6}"
let char5 = "\u{1F4EF}"

let strOfChr = char1 + char2 + char3 + char4 + char5
print("Count of unicode elements in Swift = \(strOfChr.count).")
print("Count of unicode elements in Obj-C = \((strOfChr as NSString).length).")

//Task 3
let alphabet = "abcdefghigklmnopqrstuvwxyz"
let lemma : Character = "m"
var index = 0

for c in alphabet {
    index += 1
    if c == lemma {
        print("Character \"\(lemma)\" in English alphabet has index \(index).")
    }
}







