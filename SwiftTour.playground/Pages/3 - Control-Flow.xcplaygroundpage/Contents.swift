//: [Previous](@previous)

import Foundation

let individualScore: [Int] = [75, 43, 103, 87, 12, 100, 75, 43, 103, 87, 12, 100]

var teamScore: Int = 0

for score in individualScore {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print("Team Score: ",teamScore)


// Condition based value

let scoreDecoration = if teamScore > 10 {
    "🥇"
} else {
    ""
}

print("Trophy:",scoreDecoration)


// Optional Value

var optionalString: String? = "Hello"
print("Compare value: ",optionalString == nil)


// Condition base values more depth example

var optionalName: String? = "John Appleseed"
var greeting: String = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

// // Experiment
// Change optionalName to nil. What greeting do you get? Add an else clause that sets a different greeting if optionalName is nil.

var optionalNameWithNil: String? = nil
var nilGreeting: String = "Hello!"
if let nilName = optionalNameWithNil {
    nilGreeting = "Hello, \(nilName)"
} else {
    nilGreeting = "Message must be empty!"
}
print(nilGreeting)


// Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead

let nickname: String? = "Iron Man"
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting,"\n")

// You can use a shorter spelling to unwrap a value, using the same name for that unwrapped value.

if let nickname {
    print("Hey, \(nickname)")
}


// Switches support any kind of data and a wide variety of comparison operations — they aren’t limited to integers and tests for equality.

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a long.")
case"cucumber","watercress":
    print("That would maake a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


// Using for-in loop to iterate over dictionary and find the largest number

let intrestingNUmbers: [String: [Int]] = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest: Int = 0
var largestKey: String = ""

for (key,numbers) in intrestingNUmbers {
    for number in numbers {
        if number >= largest {
            largest = number
            largestKey = key
        }
    }
}

print("""
\nLargest Number is: \(largest) and is type of "\(largestKey)"\n
""")


// While and Repeat While Loop

var n = 2
while n < 100 {
    n *= 2
}
print("n value: ",n)

var m = 2
repeat {
    m *= 2
} while m < 100
print("m value: ",m)


// using for-in for index wise ..< using number within range

var total: Int = 0

for number in 0..<4 {
    total += number
}
print("\nTOTAL:",total,"\n")


// include number from to end

var total2: Int = 0

for number in 0...4 {
    total2 += number
}
print("\nTOTAL:",total2,"\n")


//: [Next](@next)
