//: [Previous](@previous)

import Foundation


// Variable and Constants
var myVariable = 42
myVariable = 50

let myConstant = 42



let implicitInteger = 70 // Assign interger value implicitly
let implicitDouble = 70.0 // Assign Double value implicitly
let explicitDouble: Double = 70.0 // Assign Double value explicitly

// // Experiment
// Create a constant with an explicit type of Float and a value of 4.

let explicitFloat: Float = 4.0


// Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.


let label = "The width of a 🐩 is "
let width = 42
let widthLabel = label + String(width)

print(widthLabel)


// // Experiment

// Try removing the conversion to String from the last line. What error do you get?

// // let widthLabel = label + width

//Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
// Overloads for '+' exist with these partially matching parameter lists: (Int, Int), (String, String


// There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses. For example:


let apples:Int = 3
let oranges:Int = 4

let appleSummary: String = "I have \(apples) apples."

let fruitSummary: String = "I have \(apples + oranges) pieces of fruit."



let quotation = """
        Even though there's whitespace to the left,
        the actual lines aren't indented.
            Except for this line.
        Double quotes (") can appear without being escaped.

        I still have \(apples + oranges) pieces of fruit.
        """

print("\n"+quotation+"\n")


var fruits = ["strawberries", "bananas", "apples"];

fruits[1] = "grapes"

print(fruits,"\n")

var occupations = [
    "Malcolm": "Captian",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Pubic Relations"

print(occupations,"\n")

// Arrays automatically grow as you add elements

fruits.append("blueberries")
print(fruits,"\n")


// You also use brackets to write an empty array or dictionary. For an array, write [], and for a dictionary, write [:].

// fruits = []
// occupations = [:]


let emptyArray: [String] = []
let emptyDictionary: [String: Double] = [:]

//: [Next](@next)
