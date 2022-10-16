import UIKit

/* Tipos de Coleção */
// Arrays
/*
 Um Arrays armazena valores do mesmo tipo em uma lista ordenada.
 O mesmo valor pode aparecer em uma matriz várias vezes em posições diferentes.
 Sintaxe abreviada do tipo de Arrays
 O tipo de um array Swift é escrito na íntegra como Array<Element>, onde Element é o tipo de valores que o array pode armazenar.
 Você também pode escrever o tipo de um array em forma abreviada como [Element].
 Embora as duas formas sejam funcionalmente idênticas, a forma abreviada é a mais usa.
 Você pode criar um arrays vazio de um determinado tipo usando a sintaxe do inicializador:
 */
var someInts: [Int] = []
print("someInts é do tipo [Int] com \(someInts.count) itens.")
/*
 Observe que o tipo da variável someInts é inferido como [Int] do tipo do inicializador.
 Alternativamente, se o contexto já fornece informações de tipo, como um argumento de função ou uma variável ou constante já digitada, você pode criar um array vazio com um literal de array vazio, que é escrito como [] (um par vazio de colchetes):
 */
someInts.append(3) // someInts agora contém 1 valor do tipo Int
someInts = [] // someInts agora é uma matriz vazia, mas ainda é do tipo [Int]
/*
 Criando um array com um valor padrão
 */
var threeDoubles = Array(repeating: 0.0, count: 3) // threeDoubles é do tipo [Double] e é igual a [0.0, 0.0, 0.0]
/*
 Criando um array adicionando dois arrays juntos
 */
var anotherThreeDoubles = Array(repeating: 2.5, count: 3) // otherThreeDoubles é do tipo [Double] e é igual a [2.5, 2.5, 2.5]
var sixDoubles = threeDoubles + anotherThreeDoubles // sixDoubles é inferido como [Double] e é igual a [0,0, 0,0, 0,0, 2,5, 2,5, 2,5]
/* Criando um Array com um Array Literal */
var shoppingList: [String] = ["Ovos", "Leite"] // shoppingList foi inicializado com dois itens iniciais
/*
 Acessando e modificando um array
 Você acessa e modifica uma matriz por meio de seus métodos e propriedades ou usando a sintaxe de subscrito.
 Para descobrir o número de itens em uma matriz, verifique sua propriedade de contagem somente leitura:
 */
print("A lista de compras contém \(shoppingList.count) itens.")
/* Use a propriedade booleana isEmpty como atalho para verificar se a propriedade count é igual a 0: */
if shoppingList.isEmpty {
    print("A lista de compras está vazia.")
} else {
    print("A lista de compras não está vazia.")
}
/* Você pode adicionar um novo item ao final de um array chamando o método append(_:) do array: */
shoppingList.append("Farinha") // shoppingList agora contém 3 itens e alguém está fazendo panquecas
/* Alternativamente, anexe uma matriz de um ou mais itens compatíveis com o operador de atribuição de adição (+=): */
shoppingList += ["Fermento em pó"] // shoppingList agora contém 4 itens
shoppingList += ["Pasta de Chocolate", "Queijo", "Manteiga"] // shoppingList agora contém 7 itens
/* Recupere um valor do array usando a sintaxe passando o índice do valor que deseja recuperar entre colchetes imediatamente após o nome do array: */
var firstItem = shoppingList[0] // firstItem is equal to "Eggs"
/* Você pode usar a sintaxe de index para alterar um valor existente em um determinado índice: */
shoppingList[0] = "Seis ovos" // o primeiro item da lista agora é igual a "Seis ovos" em vez de "Ovos"
/*
 Ao usar a sintaxe de índice especificado precisa ser válido.
 Por exemplo, escrever shoppingList[shoppingList.count] = "Sal" para tentar anexar um item ao final da matriz resulta em um erro de tempo de execução.
 Você também pode usar a sintaxe de index para alterar um intervalo de valores de uma só vez, mesmo se o conjunto de valores de substituição tiver um comprimento diferente do intervalo que você está substituindo.
 Vamos ver um exemplo "Pasta de Chocolate", "Queijo", "Manteiga" por "Bananas" e "Maçãs":
 */
shoppingList[4...6] = ["Bananas", "Maçãs"] // shoppingList agora contém 6 itens
/* Para inserir um item no array em um índice especificado, chame o método insert(_:at:) do array: */
shoppingList.insert("Xarope de bordo", at: 0) // shoppingList agora contém 7 itens // "Xarope de bordo" agora é o primeiro item da lista
/*
 Da mesma forma, você remove um item da matriz com o método remove(at:).
 Este método remove o item no índice especificado e retorna o item removido (embora você possa ignorar o valor retornado se não precisar dele):
 */
let mapleSyrup = shoppingList.remove(at: 0) // o item que estava no índice 0 acaba de ser removido // shoppingList agora contém 6 itens e nenhum Maple Syrup // a constante mapleSyrup agora é igual à string "Xarope de bord" removida
/* Quaisquer lacunas em uma matriz são fechadas quando um item é removido e, portanto, o valor no índice 0 é novamente igual a "Seis ovos": */
firstItem = shoppingList[0] // firstItem agora é igual a "Seis ovos"
/*
 Se você deseja remover o item final de um array, use o método removeLast() em vez do método remove(at:) para evitar a necessidade de consultar a propriedade count do array.
 Assim como o método remove(at:), removeLast() retorna o item removido:
 */
let apple = shoppingList.removeLast() // o último item do array acabou de ser removido // shoppingList agora contém 5 itens e nenhuma maçã // a constante da maçã agora é igual à string "Maçãs" removida
/*
 Iterando sobre um array.
 Você pode iterar sobre todo o conjunto de valores em uma matriz com o loop for-in: */
for item in shoppingList {
    print(item)
}
/*
 Se você precisar do índice inteiro de cada item, bem como seu valor, use o método enumerated() para iterar sobre a matriz.
 Para cada item no array, o método enumerated() retorna uma tupla composta por um inteiro e o item.
 Os números inteiros começam em zero e contam até um para cada item; se você enumerar uma matriz inteira, esses números inteiros correspondem aos índices dos itens.
 Você pode decompor a tupla em constantes ou variáveis temporárias como parte da iteração:
 */
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

// Sets
/*
 Set armazena valores distintos do mesmo tipo em uma coleção sem ordenação definida.
 Você pode usar um conjunto em vez de uma matriz quando a ordem dos itens não for importante ou quando precisar garantir que um item apareça apenas uma vez.
 Set Type Syntax
 Definir tipo de sintaxe
 O tipo de um Set Swift é escrito como Set<Element>, onde Element é o tipo que o conjunto tem permissão para armazenar.
 Ao contrário dos arrays, Sets não têm uma forma abreviada equivalente.
 Criando e inicializando Set vazio
 Você pode criar um Set vazio de um determinado tipo usando a sintaxe do inicializador:
 */
var letters = Set<Character>()
print("letras é do tipo Set<Character> com \(letters.count) itens.")
/*
 Como alternativa, se o Set já fornece informações de tipo, como um argumento de função ou uma variável ou constante já definida, você pode criar um Set vazio com um literal de matriz vazio:
 */
letters.insert("a") // letters agora contém 1 valor do tipo Character
letters = [] // letters agora é um conjunto vazio, mas ainda é do tipo Set<Character>
/*
 Criando um Set com um Array Literal
 Você também pode inicializar um Set com um literal de array, como uma forma abreviada de escrever um ou mais valores como uma coleção de conjuntos.
 Vamos ver um exemplo onde criamos um conjunto chamado favoriteGenres para armazenar valores de String:
 */
var favoriteGenres: Set<String> = ["Rock", "Clássico", "Hip hop"] // favoriteGenres foi inicializado com três itens iniciais
/*
 A variável favoriteGenres é declarada como “um conjunto de valores String”, escrito como Set<String>.
 Como esse conjunto específico especificou um tipo de valor String, só é permitido armazenar valores String.
 Um tipo de Set não pode ser inferido apenas de um literal de array, portanto, o tipo de conjunto deve ser declarado explicitamente.
 No entanto, por causa da inferência de tipo do Swift, você não precisa escrever o tipo dos elementos do Set se estiver inicializando-o com um literal de array que contém valores de apenas um tipo.
 A inicialização de favoriteGenres poderia ter sido escrita em uma forma mais curta com a nova variável newFavoriteGenres:
 */
var newFavoriteGenres: Set = ["Rock", "Clássico", "Hip hop"]
/*
 Acessando e Modificando Set
 Você acessar e modifica Set por meio de seus métodos e propriedades.
 Para descobrir o número de itens em um conjunto, verifique sua propriedade de contagem somente leitura:
 */
print("Eu tenho \(favoriteGenres.count) gêneros musicais favoritos.")
/* Use a propriedade booleana isEmpty como atalho para verificar se a propriedade count é igual a 0: */
if favoriteGenres.isEmpty {
    print("No que diz respeito à música, não sou exigente.")
} else {
    print("Tenho preferências musicais particulares.")
}
/* Você pode adicionar um novo item em um Set chamando o método insert(_:) do conjunto: */
favoriteGenres.insert("Jazz") // favoriteGenres agora contém 4 items
/*
 Você pode remover um item de um conjunto chamando o método remove(_:), ele retorna o valor removido ou retorna nil se o conjunto não o contiver.
 Alternativamente, todos os itens em um Set podem ser removidos com seu método removeAll().
 */
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? eu superei.")
} else {
    print("Eu nunca me importei muito com isso.")
}
/* Para verificar se um conjunto contém um item específico, use o método contains(_:). */
if favoriteGenres.contains("Funk") {
    print("Eu me levanto com o pé bom.")
} else {
    print("Está muito badalado aqui.")
}
/*
 Iterando Set
 Você pode iterar sobre os valores em um Set com um loop for-in.
 */
for genre in favoriteGenres {
    print("\(genre)")
}
/*
 O tipo Set do Swift não tem uma ordenação definida.
 Para iterar sobre os valores de um Set em uma ordem específica, use o método sorted(), que retorna os elementos do Set como um array classificado usando o operador <
 */
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}


/* RETORNAR PARA APRESENTAÇÃO E MOSTRAR OPERAÇÕES COM SET E ASSOCIAÇÃO DE IGAULDADES */


/* Executando Operações de Conjunto / Operações Fundamentais do Conjunto */
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted() // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted() // []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted() // [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() // [1, 2, 9]
/* Set associação e igualdade */
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals) // true
farmAnimals.isSuperset(of: houseAnimals) // true
farmAnimals.isDisjoint(with: cityAnimals) // true

// Dictionaries
/*
 Um dicionário armazena associações entre chaves do mesmo tipo e valores do mesmo tipo em uma coleção sem ordenação definida.
 Cada valor é associado a uma chave exclusiva, que atua como um identificador para esse valor no dicionário.
 Ao contrário dos itens em uma matriz, os itens em um dicionário não têm uma ordem especificada.
 Você usa um dicionário quando precisa pesquisar valores com base em seu identificador, da mesma forma que um dicionário do mundo real é usado para pesquisar a definição de uma palavra específica.
 Dicionário é escrito na íntegra como Dictionary<Key, Value>, onde Key é o tipo de valor usado como chave e Value é o tipo de valor que armazena para essas chaves.
 Você também pode escrever um dicionário em forma abreviada como [Chave: Valor].
 Embora as duas formas sejam funcionalmente idênticas, a forma abreviada é a mais usada.
 Criando um dicionário vazio
 Assim como com os arrays, você pode criar um Dicionário vazio de um determinado tipo usando a sintaxe do inicializador:
 */
var namesOfIntegers: [Int: String] = [:] // namesOfIntegers é um dicionário [Int: String] vazio
/*
 Este exemplo cria um dicionário vazio do tipo [Int: String] para armazenar nomes legíveis por humanos de valores inteiros.
 Suas chaves são do tipo Int e seus valores são do tipo String.
 Se o contexto já fornece informações de tipo, você pode criar um dicionário vazio com um literal de dicionário vazio, que é escrito como [:] (dois pontos dentro de um par de colchetes):
 */
namesOfIntegers[16] = "dezesseis" // namesOfIntegers agora contém 1 par de valores-chave
namesOfIntegers = [:] // namesOfIntegers é mais uma vez um dicionário vazio do tipo [Int: String]
/*
 Criando um dicionário com um literal de dicionário
 Você também pode inicializar um dicionário com um literal de dicionário, que tem uma sintaxe semelhante ao literal dos arrays.
 Um literal de dicionário é uma forma abreviada de escrever um ou mais pares de valores-chave como uma coleção de dicionário.
 Um par chave-valor é uma combinação de uma chave e um valor.
 Em um literal de dicionário, a chave e o valor em cada par de valor-chave são separados por dois pontos.
 Os pares de valores-chave são escritos como uma lista, separados por vírgulas, cercados por um par de colchetes:
 Vamnos criar um dicionário para armazenar os nomes dos aeroportos internacionais.
 Neste dicionário, as chaves são códigos de três letras da Associação Internacional de Transporte Aéreo e os valores são nomes de aeroportos:
 */
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
/*
 O dicionário de aeroportos é declarado como tendo um tipo de [String: String], que significa “um Dicionário cujas chaves são do tipo String, e cujos valores também são do tipo String”.
 Assim como acontece com os arrays, você não precisa escrever o tipo do dicionário se estiver inicializando-o com um literal de dicionário cujas chaves e valores tenham tipos consistentes.
 A inicialização dos aeroportos poderia ter sido escrita em uma forma mais curta:
 */
var literalAirports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
/*
 Como todas as chaves no literal são do mesmo tipo umas das outras e, da mesma forma, todos os valores são do mesmo tipo entre si, Swift pode inferir que [String: String] é o tipo correto a ser usado para o dicionário de aeroportos.
 Acessando e modificando um dicionário
 Você acessa e modifica um dicionário por meio de seus métodos e propriedades ou usando a sintaxe de subscrito.
 Assim como em uma matriz, você descobre o número de itens em um Dicionário verificando sua propriedade de contagem somente leitura:
 */
print("O dicionário de aeroportos contém \(airports.count) itens.")
/* Use a propriedade booleana isEmpty como atalho para verificar se a propriedade count é igual a 0.*/
if airports.isEmpty {
    print("O dicionário de aeroportos está vazio.")
} else {
    print("O dicionário de aeroportos não está vazio.")
}
/*
 Você pode adicionar um novo item a um dicionário com sintaxe de subscrito.
 Use uma nova chave do tipo apropriado como índice subscrito e atribua um novo valor do tipo apropriado:
 */
airports["LHR"] = "London" // o dicionário de aeroportos agora contém 3 itens
/* Você também pode usar a sintaxe de subscrito para alterar o valor associado a uma determinada chave: */
airports["LHR"] = "London Heathrow" // o valor de "LHR" foi alterado para "London Heathrow"
/*
 Como alternativa à subscrição, use o método updateValue(_:forKey:) para definir ou atualizar o valor de uma chave específica.
 O método updateValue(_:forKey:) define um valor para uma chave se nenhuma existir, ou atualiza o valor se essa chave já existir.
 Ao contrário de um subscrito, no entanto, o método updateValue(_:forKey:) retorna o valor antigo após realizar uma atualização.
 Isso permite que você verifique se uma atualização ocorreu ou não.
 O método updateValue(_:forKey:) retorna um valor opcional do tipo de valor do dicionário.
 Para um dicionário que armazena valores String, por exemplo, o método retorna um valor do tipo String?, ou “String opcional”.
 Este valor opcional contém o valor antigo para essa chave se existia antes da atualização, ou nil se nenhum valor existia:
 */
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("O valor antigo para DUB era \(oldValue).")
}
/*
 Você também pode usar a sintaxe de subscrito para recuperar um valor do dicionário para uma chave específica.
 Como é possível solicitar uma chave para a qual não existe valor, o subscrito de um dicionário retorna um valor opcional do tipo de valor do dicionário.
 Se o dicionário contiver um valor para a chave solicitada, o subscrito retornará um valor opcional contendo o valor existente para essa chave.
 Caso contrário, o subscrito retorna nil:
 */
if let airportName = airports["DUB"] {
    print("O nome do aeroporto é \(airportName).")
} else {
    print("Esse aeroporto não está no dicionário de aeroportos.")
}
/* Você pode usar a sintaxe de subscrito para remover um par chave-valor de um dicionário atribuindo um valor nil para essa chave: */
airports["APL"] = "Apple International" // "Apple International" não é o verdadeiro aeroporto para APL, então exclua-o
airports["APL"] = nil // APL agora foi removido do dicionário
/*
 Como alternativa, remova um par chave-valor de um dicionário com o método removeValue(forKey:).
 Este método remove o par chave-valor se existir e retorna o valor removido, ou retorna nil se nenhum valor existia:
 */
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("O nome do aeroporto removido é \(removedValue).")
} else {
    print("O dicionário de aeroportos não contém um valor para DUB.")
}
/*
 Iterando em um dicionário
 Você pode iterar sobre os pares chave-valor em um dicionário com um loop for-in.
 Cada item no dicionário é retornado como uma tupla (chave, valor), e você pode decompor os membros da tupla em constantes ou variáveis temporárias como parte da iteração:
 */
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
/* Você também pode recuperar uma coleção iterável de chaves ou valores de um dicionário acessando suas propriedades de chaves e valores: */
for airportCode in airports.keys {
    print("Código do aeroporto: \(airportCode)")
}
for airportName in airports.values {
    print("Nome do aeroporto: \(airportName)")
}
/* Se você precisar usar as chaves ou valores de um dicionário com uma API que usa uma instância Array, inicialize um novo array com a propriedade keys or values: */
let airportCodes = [String](airports.keys) // airportCodes é ["LHR", "YYZ"]
let airportNames = [String](airports.values) // airportNames é ["London Heathrow", "Toronto Pearson"]
