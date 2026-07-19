//: [Previous](@previous)

import Foundation


func greet(person: String, day: String) -> String {
    return "Hello, \(person), today is \(day)"
}

print(greet(person: "Bob", day: "Tuesday"))


// Greet with _ under-squar and custom keyword this _ keyword allow to bypass parameter name and pass direct value in on function call and custom keyword allow to annotate the value instead orignal parameter name

func greetWith_(_ person: String, on day: String) -> String {
    return "Hello, \(person), today is \(day)"
}

print(greetWith_("Bob",on:"Tuesday"))


// create function that accepts array of number and returns tupple of result

func calculateStatistics(scores:[Int]) -> (min: Int, max: Int, sum: Int) {
    var max = scores[0]
    var min = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return(min,max,sum)
}

print("Statistics: \(calculateStatistics(scores: [1,2,3,4,5]))")


// Closures


func returnFifteen() -> Int {
    var y=10
    
    func add() {
        y += 5
    }
    add()
    return y
}

print("\nFifteen:",returnFifteen())


// function to increment a value using closure

func makeIncrementer() -> ((Int)->Int) {
    func addOne(number: Int) -> Int {
        return number + 1
    }
    return addOne
}

var increment = makeIncrementer()
print("\nIncrement: ",increment(7))


// A function can take another function as one of its arguments

func hasAnyMatches(list: [Int], condition:(Int)->Bool) -> Bool {
    
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(_ number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print("Result: ",hasAnyMatches(list: numbers, condition: lessThanTen))

// using map for creating clousre funtion without name

let result = numbers.map({(number: Int) -> Int in
    let result = 3 * number
    return result
})

print(result)


// Experiment
// Rewrite the closure to return zero for all odd numbers.

let res = numbers.map({ (number: Int)-> Int in
    if number % 2 != 0 {
        return 0
    } else {
        return number
    }
})

print(res)


let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
// Prints "[60, 57, 21, 36]".


let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

//: [Next](@next)
