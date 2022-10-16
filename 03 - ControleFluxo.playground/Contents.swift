import UIKit

/* Controle de Fluxo */
/*
 Use if e switch para fazer condicionais e use for-in, while e repeat-while para fazer loops.
 Parênteses em torno da condição ou variável de loop são opcionais.
 Chaves ao redor do corpo são necessárias.
 Vamos ver na prática:
 */
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
/*
 Em uma instrução if, a condicional deve ser uma expressão booleana — isso significa que código como if score { ... } jera um erro, não é uma comparação implícita com zero.
 Você pode usar if e let juntos para trabalhar com valores opcionais.
 Como dito anteriormente, um valor opcional contém um valor ou contém nil para indicar que um valor está ausente.
 */
var optionalString: String? = "Olá"
print(optionalString == nil) // print false
var optionalName: String? = "João de Santos"
var greeting = "Olá!"
if let name = optionalName {
    greeting = "Olá, \(name)"
}
/*
 Se o valor opcional for nil, a condicional será falsa e o código entre colchetes será ignorado.
 Caso contrário, o valor opcional é desempacotado e atribuído à constante após let, o que torna o valor desempacotado disponível dentro do bloco de código.
 Outra maneira de lidar com valores opcionais é fornecer um valor padrão usando o ??.
 Se o valor opcional estiver ausente, o valor padrão será usado.
 Vamos ver:
 */
let nickname: String? = nil
let fullName: String = "João de Deus"
let informalGreeting = "Oi \(nickname ?? fullName)"
/*
 Você pode usar uma ortografia mais curta para desempacotar um valor, usando o mesmo nome para esse valor desempacotado. */
if let nickname {
    print("Oi, \(nickname)")
}
/*
 Vamos ver os Switches.
 Os switches suportam qualquer tipo de dados e uma ampla variedade de operações de comparação - eles não se limitam a números inteiros e testes de igualdade.
 */
let vegetable = "pimentão vermelho"
switch vegetable {
case "salsão":
    print("Adicione algumas passas.")
case "pepino", "agrião":
    print("Isso daria um bom sanduíche.")
case let x where x.hasSuffix("pimentão"):
    print("é picante \(x)?")
default:
    print("Tudo vai bem na sopa.")
}
/*
 Observe como let pode ser usado em um padrão para atribuir o valor que corresponde ao padrão a uma constante.
 Depois de executar o código dentro do switch e do case correspondente, o programa sai da instrução switch.
 A execução não continua para o próximo caso, portanto, você não precisa sair explicitamente do switch no final do código de cada caso, usando return ou break.
 Vamos falar de laços de repetição.
 Você usa for-in para iterar itens em um dicionário fornecendo um par de nomes a serem usados para cada par de valor-chave.
 Os dicionários são uma coleção não ordenada, portanto, suas chaves e valores são iterados em uma ordem arbitrária.
 */
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
/*
 Use while para repetir um bloco de código até que uma condição mude.
 A condição de um loop pode estar no final, garantindo que o loop seja executado pelo menos uma vez.
 */
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
/* Você pode manter um índice em um loop usando ..< para criar um intervalo de índices. */
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
/* Use ..< para criar um intervalo que omita seu valor superior e use ... para criar um intervalo que inclua ambos os valores. */
