import UIKit

var greeting = "Hello, playground"
let name = "Guitar"

//name = "tar"
greeting = "Yo bro! \(name)"

let n1: Int = 6
let n2: Int = 18 // explicitly show type
var result = "The result is \(n1+n2)"

let d1: Double = 2.5
result = "The result is \(Double(n1) / d1)"

let b1: Bool = true
if b1 {
    print("B1 is True")
} else {
    print("B1 is False")
}

for i in 0...9 { // ... --> interpret of no 0 to 9
    print(i)
}

//var arr = ["Guitu", "Tatar", "P.Fair", "Atom"]
var arr: [String] = []
for name in arr {
    print("Hello, \(name)")
}

typealias Person = (String, Int)
var t1: [Person] = [("Guitar", 21), ("tatar", 21), ("Momo", 28), ("Oong", 48)]

for person in t1 {
    let message = String(format: "%@ %d ", person.0, person.1 ) // %d digit number
    print(message)
}

typealias Guitar = String
let message: Guitar = "Hello"

var i = 0
while i < 3 {
    print("While loop \(i)")
    i += 1
}

class Student {
    var name: String
    var id: String
    var totalGpq: Double
    var totalCredit: Int
    
    init(name: String, id: String, totalGpq: Double, totalCredit: Int) {
        self.name = name
        self.id = id
        self.totalGpq = totalGpq
        self.totalCredit = totalCredit
    }
    
    func detailPrint() {
        print("\(id) \(name) GPA: \(totalGpq) with \(totalCredit) credits")
    }
}

let s1 = Student(name: "Guitar",
                 id: "U6511063",
                 totalGpq: 2.69,
                 totalCredit: 62)

print(s1.id)
s1.name = "Jilamika"
print(s1.name)
s1.detailPrint()

//Optional Type for Type Safty
var number: Int? = nil // ? --> refer to optional type (This value can be null)
number = 10
//number = nil

if number != nil {
    var calculationResult = number! + 2  // --> ! force unwrapped that valable has value
}

if let numberAfterCheck = number {
    var calculationResult = numberAfterCheck + 2 // this is good practice way handle null
}


func guardDemo() {
    number = 10
    guard let numberCheckedByGuard = number else {
        return
    }
    print(numberCheckedByGuard + 2)
}

guardDemo()
 
func calculate(n1: Int, n2: Int) -> (String, Int) { // function order
    return ("result is ok", n1 + n2 )
}

