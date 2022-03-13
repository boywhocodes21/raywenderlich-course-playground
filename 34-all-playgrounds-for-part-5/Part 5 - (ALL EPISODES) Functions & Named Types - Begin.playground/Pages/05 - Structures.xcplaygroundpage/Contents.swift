//: [⇐ Previous: 04 - Challenge - Functions](@previous)
//: ## Episode 05: Structures

// ----------------------------------
//typealias Student = (name: String, grade: Int, pet: String?)
// ----------------------------------




//: [⇒ Next: 06 - Challenge - Structures](@next)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var typeofLargest  = ""

for(str,nums) in interestingNumbers{
    for numb in nums{
        if(numb > largest){
            largest = numb
            typeofLargest = str
            
        }
    }
}
print(largest)
print(typeofLargest)



func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")


func calculateStatistics(scores:[Int]) -> (min:Int,max:Int,sum:Int){
    var min  = scores[0],max = 0,score = 0
    
    for i in scores{
        if min > i{
            min = i
        }
            
        else if max < i{
            max = i
        }
        score += i
    }
    return (min,max,score)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics)



func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()



func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)




func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)



numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})




class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
