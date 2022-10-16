import UIKit

/* Valores Simples */
/*
 Use let para fazer uma constante e var para fazer uma variável.
 O valor de uma constante não precisa ser fornecido imediatamente, mas você deve atribuir um valor uma vez.
 Isso significa que você pode usar constantes para nomear um valor determinado uma vez, mas usado em muitos lugares.
 Vamos ver na prátrica
 */
var myVariable = 42
myVariable = 50
let myConstant = 42
/*
 Uma constante ou variável deve ter o mesmo tipo que o valor que você deseja atribuir a ela.
 No entanto, você nem sempre precisa escrever o tipo explicitamente.
 Fornecer um valor ao criar uma constante ou variável permite que o compilador infira seu tipo.
 No exemplo anterior, o compilador inferiu que myVariable é um inteiro porque seu valor inicial é 42, um inteiro.
 Se o valor inicial não fornecer informações suficientes (ou se não houver um valor inicial), especifique o tipo escrevendo-o após a variável, separado por dois pontos.
 Por exemplo:
 */
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
/*
 Os valores nunca são convertidos implicitamente para outro tipo.
 Se você precisar converter um valor em um tipo diferente, crie explicitamente uma instância do tipo desejado.
 Dessa forma:
 */
let label = "A largura é "
let width = 94
let widthLabel = label + String(width) // Se remover a conversão para String vai dar erro
/*
 Há uma maneira ainda mais simples de incluir valores em strings: escreva o valor entre parênteses e escreva uma barra invertida (\) antes dos parênteses (chamdo interpolação).
 Por exemplo:
 */
let apples = 3
let oranges = 5
let appleSummary = "Eu tenho \(apples) maçãs."
let fruitSummary = "Eu tenho \(apples + oranges) pedaços de frutas."
/*
 Use três aspas duplas (""") para strings que ocupam várias linhas. O recuo no início de cada linha entre aspas é removido, desde que corresponda ao recuo das aspas de fechamento.
 Por exemplo:*/
let quotation = """
Eu disse "eu tenho \(apples) maçãs."
E então eu disse: "Eu tenho \(apples + oranges) pedaços de frutas."
"""
/*
 Crie arrays e dictionaries usando colchetes ([]) e acesse seus elementos escrevendo o índice ou sua chave entre colchetes.
 Você pode usar uma vírgula após o último elemento.
 Vamos ver:
 */
var fruits = ["morangos", "limões", "tangerinas"]
fruits[1] = "uvas"
var occupations = [
    "João": "Capitão",
    "Pedro": "Mecânico",
]
occupations["Maria"] = "Relações Públicas"
/* Arrays crescem automaticamente à medida que você adiciona elementos. */
fruits.append("amoras")
print(fruits)
/* Para criar um array ou dictionary vazio, use a sintaxe do inicializador correspondente. Por exemplo: */
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
/* Se as informações de tipo puderem ser inferidas, você poderá escrever um array vazio como [] e um dicionário vazio como [:].
 Por exemplo, quando você define um novo valor para uma variável ou passa um argumento para uma função.
 */
fruits = []
occupations = [:]
