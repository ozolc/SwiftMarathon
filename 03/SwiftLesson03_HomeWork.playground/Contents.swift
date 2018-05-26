// Task 1
var myExcercise = (maxChinUp: 20, maxPushUp: 50, maxSquatting: 75)
print("My max chin-up is \(myExcercise.maxChinUp)")
print("My max push-up is \(myExcercise.1)")
print("My max squatting is \(myExcercise.maxSquatting)")
print("============================")

// Task 2
var friendsExcercise = (maxChinUp: 25, maxPushUp: 60, maxSquatting: 55)
var tempTuple = (1, 1, 1)
print("My friends max chin-up is \(friendsExcercise.0)")
print("My friends max push-up is \(friendsExcercise.1)")
print("My friends max squatting is \(friendsExcercise.maxSquatting)")
print("============================")

tempTuple = myExcercise
myExcercise = friendsExcercise
friendsExcercise = tempTuple
print("Value of excercises after exchanging")
print("My max chin-up is \(myExcercise.maxChinUp)")
print("My max push-up is \(myExcercise.1)")
print("My max squatting is \(myExcercise.maxSquatting)")
print("My friends max chin-up is \(friendsExcercise.0)")
print("My friends max push-up is \(friendsExcercise.1)")
print("My friends max squatting is \(friendsExcercise.maxSquatting)")
print("============================")

// Task 4
var subtractionExcercises = (chinUp: myExcercise.maxChinUp - friendsExcercise.maxChinUp,
                             pushUp: myExcercise.maxPushUp - friendsExcercise.maxPushUp,
                             squatting: myExcercise.maxSquatting - friendsExcercise.maxSquatting)

print("Difference between our quantity of chin-up is \(abs(subtractionExcercises.0))")
print("Difference between our quantity of push-up is \(abs(subtractionExcercises.1))")
print("Difference between our quantity of squatting is \(abs(subtractionExcercises.2))")

