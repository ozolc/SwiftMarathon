//let dict : [String:String] = ["машина" : "car", "мужик" : "man"]
//let dict2 : [Int:String] = [0 : "car", 1 : "man"]
//let dict3 : Dictionary<String, Double> = ["a" : 2.0]
//dict2[1]

var dict = ["машина" : "car", "мужик" : "man"]

dict["мужик"]

dict.count
dict.isEmpty

var dict3 = [String : String]()

dict3.count
dict3.isEmpty

//dict["комп"] = "computer"

dict

let keys = Array(dict.keys)
let values = Array(dict.values)

//dict["комп"] = "mac"

dict.updateValue("mac", forKey: "комп")

let comp : String? = dict["комп"]

if let comp = dict["комп2"] {
    print("\(comp)")
} else {
    print("no value for key комп2")
}

//dict["мужик"] = nil
//dict

/*
dict.removeValue(forKey: "мужик")

dict = [:]

dict.isEmpty

dict["hello"] = "world"

dict
*/


for key in dict.keys {
    print("key = \(key), value = \(dict[key]!)")
}

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}



