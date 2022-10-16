import UIKit

/* Optional Chaining */
/*
 O encadeamento opcional é um processo para consultar e chamar propriedades, métodos e subscripts em um opcional que atualmente pode ser nulo.
 Se o opcional contiver um valor, a chamada de propriedade, método ou subscripts será bem-sucedida; se o opcional for nil, a propriedade, método ou chamada de subscripts retornará nil.
 Várias consultas podem ser encadeadas e toda a cadeia falha normalmente se qualquer link na cadeia for nulo.
 O encadeamento opcional no Swift é semelhante ao nil de mensagens no Objective-C, mas de uma maneira que funciona para qualquer tipo e pode ser verificado quanto ao sucesso ou falha.
 O conceito de opcionais não existe em C ou Objective-C
 
 Optional Chaining (ou Encadeamento opcional) é uma alternativa ao Forced Unwrapping (ou Desempacotamento Forçado)
 Você especifica o encadeamento opcional colocando um ponto de interrogação (?) após o valor opcional. Isso é muito semelhante a colocar um ponto de exclamação (!) após um valor opcional para forçar o desdobramento de seu valor. A principal diferença é que o Optional Chaining falha normalmente quando o opcional é nil, enquanto o Forced Unwrapping gera um erro de tempo de execução quando o opcional é nil.
 Vamos ver como o Optional Chaining difere do Forced Unwrapping e permite que você verifique o sucesso:
 */
class Person {
    var residence: Residence?
}
class Residence {
    var numberOfRooms = 1
}
/*
 As instâncias de Person têm uma propriedade de residência opcional do tipo residence?.
 As instâncias de Residence têm uma única propriedade Int chamada numberOfRooms, com um valor padrão de 1.
 Se você criar uma nova instância de Person, sua propriedade de residência será inicializada por padrão em nil, em virtude de ser opcional.
 No código abaixo, João tem um valor de propriedade de residência igual a zero:
 */
let joao = Person()
/*
 Se você tentar acessar a propriedade numberOfRooms da residência dessa pessoa, colocando um ponto de exclamação após a residência para forçar o desempacotamento de seu valor, você acionará um erro de tempo de execução, pois não há valor de residência para desempacotar:
 */
//let roomCount = joao.residence!.numberOfRooms // Isso aciona um erro de tempo de execução, descomentar para ver o erro
/*
 O código anterior será executado quando joao.residence tem um valor diferente de nil e definirá roomCount como um valor Int contendo o número apropriado de quartos.
 No entanto, esse código sempre aciona um erro de tempo de execução quando residence é nil, conforme foi observado quando executamos o código.
 Optional chaining (ou encadeamento opcional) fornece uma maneira alternativa de acessar o valor de numberOfRooms.
 Para usar o encadeamento opcional, use um ponto de interrogação no lugar do ponto de exclamação:
 */
if let roomCount = joao.residence?.numberOfRooms {
    print("A residência de João tem \(roomCount) quarto(s).")
} else {
    print("Não foi possível recuperar o número de quartos.")
}
/*
 Observe que isso é verdade mesmo que numberOfRooms seja um Int não opcional, isso porque residence é nil.
 O fato de ser consultado por meio de uma cadeia opcional significa que a chamada para numberOfRooms sempre retornará um Int? em vez de um Int.
 Você pode atribuir uma instância residence a joao.residence, para que ela não tenha mais um valor nil:
 */
joao.residence = Residence()
/*
 joao.residence agora contém uma instância de Residence real, em vez de nil.
 Se você tentar acessar numberOfRooms com o mesmo encadeamento opcional de antes, ele agora retornará um Int? que contém o valor numberOfRooms padrão de 1:
 */
if let roomCount = joao.residence?.numberOfRooms {
    print("A residência de João tem \(roomCount) quarto(s).")
} else {
    print("Não foi possível recuperar o número de quartos.")
}
