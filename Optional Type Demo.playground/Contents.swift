import UIKit
var explicitText: String = "Hello"
var implicitText = "Hello"

var name: String? = "Guitu"
print(name) // it will show Optional("Guitu") because will know tha it come from optional value
print(name!) //wrap --> " Guitu " but if doesn't give the value Show only  var value: String? --> ut will show an error
print(name ?? "No value") // if doesn't give the value --> No value

var totalScore: Int? = 100
//if totalScore != nil {
//    totalScore! += 100 // ! to force unwrap it
//    print(totalScore!)
//}

if var totalScore = totalScore, let name = name { // let is  check if not null it'll be x
    totalScore += 100
    print("Name: " + name)
    print("Score: \(totalScore)" )
}

if let _ = name { // _ live that excue like that
    print("This name is not nil")
} else {
    print("The name is nil")
}



