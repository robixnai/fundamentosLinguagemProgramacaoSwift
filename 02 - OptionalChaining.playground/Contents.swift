import UIKit

class Residence {
    var numberOfRooms = 1
}
class Person {
    var residence: Residence?
}
let joao = Person()

if let roomCount = joao.residence?.numberOfRooms {
    print("A residência do João tem \(roomCount) quarto(s)")
} else {
    print("Não foi possível recuperar o número de quartos.")
}

joao.residence = Residence()
if let roomCount = joao.residence?.numberOfRooms {
    print("A residência do João tem \(roomCount) quarto(s)")
} else {
    print("Não foi possível recuperar o número de quartos.")
}
