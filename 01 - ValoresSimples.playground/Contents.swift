import UIKit

/* Valores Simples */
var myVariable = 42
myVariable = 50
let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let label = "A largura é "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "Eu tenho \(apples) maçãs"
let fruitSummary = "Eu tenho \(apples + oranges) pedaços de frutas"

let quotation = """
Eu disse "eu tenho \(apples) maçãs."
E então eu disse: "Eu tenho \(apples + oranges) pedaços de frutas."
"""
var fruits = ["morangos", "limões", "tangerinas"]
fruits[1] = "uvas"
var occupations = [
    "João": "Capitão",
    "Pedro": "Mecânico",
]
occupations["Maria"] = "Relações Públicas"
fruits.append("amoras")
print(fruits)

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

fruits = []
occupations = [:]
