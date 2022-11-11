import UIKit

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Olá"
print(optionalString == nil)
var optionalName: String? = "João de Santos"
var greeting = "Olá"
if let name = optionalName {
    greeting = "Olá, \(name)"
}

let nickname: String? = nil
let fullName: String = "João de Deus"
let informalGreeting = "Oi \(nickname ?? fullName)"

if let nickname {
    print("Oi, \(nickname)")
}

let vegetable = "pimentão vermerlho"
switch vegetable {
case "salsão":
    print("Adicione algumas uvas passas.")
case "pepino", "agrião":
    print("Isso daria um bom sanduíche")
case let x where x.hasPrefix("pimentão"):
    print("é picante \(x)?")
default:
    print("Tudo vai bem sopa.")
}

let interestingNumbers = [
    "Melhor": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Quadrado": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

var newTotal = 0
for i in 0...4 {
    newTotal += i
}
print(newTotal)
