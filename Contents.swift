import UIKit

//ТЕОРИЯ, УРОКИ!!!

//class Person {
//    var residence: Residence?
//}
//
//class Residence {
//    var rooms = [Room]()
//    var numberOfRooms: Int {
//        return rooms.count
//    }
//    subscript(i: Int) -> Room {
//        get {
//            return rooms[i]
//        }
//        set {
//            rooms[i] = newValue
//        }
//    }
//    func printNumberOfRooms() {
//        print("Общее количество комнат равно \(numberOfRooms)")
//    }
//    var address: Address?
//}
//class Room {
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Address {
//    var buildingName: String?
//    var buildingNumber: String?
//    var street: String?
//    func buildingIdentifier() -> String? {
//        if let buildingName = buildingName, let street = street {
//            return "\(buildingNumber) \(street)"
//        } else if buildingName != nil {
//            return buildingName
//        } else {
//            return nil
//        }
//    }
//}
//
//let john = Person()
//if let roomCount = john.residence?.numberOfRooms {
//    print("John's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve  the number of rooms.")
//}
//
//let someAddress = Address()
//someAddress.buildingNumber = "29"
//someAddress.street = "Acacia road"
//john.residence?.address = someAddress
//
//func createAddress() -> Address {
//    print("Function was called.")
//
//    let someAddress = Address()
//    someAddress.buildingNumber = "29"
//    someAddress.street = "Acacia street"
//
//    return someAddress
//}
//john.residence?.address = createAddress()
//
//if john.residence?.printNumberOfRooms() != nil {
//    print("Есть возможность вывести общее количество комнат")
//} else {
//    print("Нет возможности вывести общее количество комнат")
//}
//
//if (john.residence?.address = someAddress) != nil {
//    print("Была возможность установить адрес.")
//} else {
//    print("Не было возможности установить адрес.")
//}
//
//if let firstRoomName = john.residence?[0].name {
//    print("Название первой комнаты \(firstRoomName)")
//} else {
//    print("Никак не получить название первой комнаты")
//}
//
//let johnsHouse = Residence()
//johnsHouse.rooms.append(Room(name: "Гостиная"))
//johnsHouse.rooms.append(Room(name: "Кухня"))
//john.residence = johnsHouse
//
//if let firstRoomName = john.residence?[0].name {
//    print("Название первой комнаты \(firstRoomName)")
//} else {
//    print("Никак не получить название первой комнаты")
//}
//
//var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
//testScores["Dave"]?[0] = 91
//testScores["Bev"]?[0] += 1
//testScores["Brian"]?[0] = 72
//
//if let johnsStreet = john.residence?.address?.street {
//    print("John's street name is \(johnsStreet)")
//} else {
//    print("Unable to retrieve the address.")
//}
//
//let johnsAddress = Address()
//johnsAddress.buildingName = "The Larches"
//johnsAddress.street = "Laurel street"
//john.residence?.address = johnsAddress
//
//if let johnsStreet = john.residence?.address?.street {
//    print("John's street name is \(johnsStreet)")
//} else {
//    print("Unable to retrieve the address")
//}
//
//if let buildingIdetifier = john.residence?.address?.buildingIdentifier() {
//    print("John's building identifier is \(buildingIdetifier)")
//}
//
//if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
//    if beginsWithThe {
//        print("John's building identifier begins with \"The\".")
//    } else {
//        print("John's building identifier does not begin with \"The\".")
//    }
//}

//СКУТАРЕНКО

//class Address {
//    var street = "Deribasivskaya"
//    var number = 1
//    var city = "Odessa"
//    var country = "Ukraine"
//}
//struct Garage {
//    var size = 2
//}
//class House {
//    var rooms = 1
//    var address = Address()
//    var garage: Garage? = Garage()
//}
//class Car {
//    var model = "Zaporojec"
//    func start() {
//    }
//}
//class Person {
//    var cars: [Car]? = [Car()]
//    var house: House? = House()
//}
//let p = Person()
////p.cars![0]
////p.house!
////
//p.house!.garage!.size

//if (p.house?.garage?.size = 3) != nil {
//    print("Upgrade!")
//} else {
//    print("Failure!")
//}
//
//if let size = p.house?.garage?.size {//опшинал чейнинг
//    size
//}
//
////(p.cars?[0].model)!
//if p.cars?[0].start() != nil {
//    print("Start!")
//} else {
//    print("Finish!")
//}

//ЗВЕРИК

//class Address {
//    let street = "Тверская"
//    let number = 18
//}
//
//class Home {
//    let address = Address()
//    let room: Int? = 3
//    var parking: Parking? = Parking()
//    func printRooms() {
//        print("The number of rooms is \(room)")
//    }
//}
//
//struct Parking {
//    var carPlace = 5
//}
//
//class Parents {
//    var cars: [String]? = ["Mersedes"]
//    var home: Home? = Home()
//}
//let parents = Parents()
//parents.home?.parking?.carPlace
//
//if (parents.home?.parking?.carPlace = 7) != nil {
//    print("property установлено")
//} else {
//    print("property не установлено")
//}
//
//parents.cars?[0]
//
//parents.home?.printRooms()
//
//if (parents.home?.printRooms()) != nil {
//    print("Комнату уже можно печатать")
//} else {
//    print("Комнату нельзя печатать")
//}


//-------------------------------HomeWork---------------

//3) Сделать класс Люди, у класса будут проперти родственники, соседи и тд (всё опционально). Создать нужно более 25 человек.

class Humans {
    let grandParents: GrandParents? = GrandParents()
    let neighbor: Neighbor? = Neighbor()
    let cousin: Cousin? = Cousin()
    let familyFriend: FamilyFriend? = FamilyFriend()
    let parents: Parents? = Parents()
    let brother: Brother? = Brother()
}

class GrandParents: Humans {

    let grandmother = "Valentina"
    let grandfather = "Gennady"

    let allGrand: [String]? = ["Valentina", "Gennady"]
}

class Neighbor: Humans {
    let neighborLeft = "Semen"
    let neighborReight = "Julia"
    let neighborStreet = "Nikolay"
    let neighborStreetOne = "Sergey"
    let neighborStreetTwo = "Natalya"
    let allNeighbors: [String]? = ["Semen", "Julia", "Nikolay", "Sergey", "Natalya"]
}

class Cousin: Humans {
    let bigSisner = "Elena"
    let littleSister = "Julia"
    let allSister: [String]? = ["Elena", "Julia"]
}

class FamilyFriend: Humans {
    let ffOne = "Anton"
    let ffTwo = "Marik"
    let ffThree = "Ildar"
    let ffFour = "Ilja"
    let ffFive = "Marina"
    let ffSix = "Irena"
    let ffSeven = "Aleksandr"
    let ffEight = "Olga"
    let ffNine = "Danil"
    let ffTen = "Iljas"
    let ffEleven = "Dina"
    let allFriends: [String]? = ["Anton", "Marik", "Ildar", "Ilja", "Marina", "Irena", "Aleksandr", "Olga", "Danil", "Iljas", "Dina"]
}

class Parents: Humans {
    let mother = "Valentina"
    let father = "Jury"
    let allParents: [String]? = ["Valentina", "Jury"]
}

class Brother: Humans {
    let brotherOne = "Aleksandr"
    let brotherTwo = "Denis"
    let britherThree = "Eugene"
    let allBrother: [String]? = ["Aleksandr", "Denis", "Eugene"]
}

let humans = Humans()

//5)Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее

if let grandParents = humans.grandParents?.allGrand?.count {
    print("У меня \(grandParents) бабушки и дедушки")
}

if let neighbor = humans.neighbor?.allNeighbors?.count {
    print("У меня \(neighbor) соседей")
}

if let cousin = humans.cousin?.allSister?.count {
    print("У меня \(cousin) сестры")
}

if let familyFriend = humans.familyFriend?.allFriends?.sorted() {
    print("У нас \(familyFriend) друзей семьи")
}

if let parents = humans.parents?.allParents?.count {
    print("У меня \(parents) родителя")
}

if let brother = humans.brother?.allBrother?.count {
    print("у меня \(brother) брата")
}

//6)Создать класс животных и проперти - корова, коза, собака и тд

class Animals {
    let name: String
    var cow: Cow?
    var goat: Goat?
    var dog: Dog?

    init(name: String) {
        self.name = name
    }
}

class Cow: Animals {

}

class Goat: Animals {

}

class Dog: Animals {

}
let cow = Cow(name: "Burenka")
let goat = Goat(name: "Volod'ka")
let dog = Dog(name: "Barbos")

//7)Создать класс растения и проперти - трава, цветы и тд

class Plants {
    let name: String
    var grass: Grass?
    var flowers: Flowers?
    var trees: Trees?

    init(name: String) {
        self.name = name
    }
}

class Grass: Plants {

}

class Flowers: Plants {

}

class Trees: Plants {

}

let grass = Grass(name: "KanadaGreen")
let flowers = Flowers(name: "Rose")
let trees = Trees(name: "Beresa")

//8)Положить их всех в массив и отсортировать по алфавиту и по классу - Люди - животные - растения

let alls: [AnyObject] = [Humans(), Animals(name: "Burenka"), Animals(name: "Volod'ka"), Animals(name: "Barbos")]



for value in mediaArray {
    if let musics = value as? Music {
        print("Song \(musics.name) by \(musics.artist)")
    } else if let films = value as? Film {
        print("Movie \(films.name) director \(films.director)")
    }
}


class Symbol {

}
class A: Symbol {
    func aa(){}
}
class B: Symbol {
    func bb(){}
}
let array: [Symbol] = [A(), B(), Symbol(), A(), A(), B()]

var aCount = 0
var bCount = 0
var sCount = 0

for value in array {
    if value is A {
        aCount += 1
    } else if value is B {
        bCount += 1
    } else {
        sCount += 1
    }
    if let a = value as? A {
        a.aa()
    }else if let b = value as? B {
        b.bb()
    }
}
aCount
bCount
sCount


class Media {
    var name: String

    init(name: String) {
        self.name = name
    }
}
class Film: Media {
    var director: String

    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Music: Media {
    var artist: String

    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

class NewClass {

}
let mediaArray: [AnyObject] = [Film.init(name: "Casablanca", director: "Michel"),
                           Music.init(name: "Blue Shoes", artist: "Elvis Prestley"),
                           Film.init(name: "Kane", director: "Citrizen"),
                           Music.init(name: "The Only", artist: "Chesney"),
                           Film.init(name: "Never Gonna", director: "Rick Astley"), NewClass()]

var count = (musicCount: 0, filmCount: 0)
for obj in mediaArray {
    if obj is Film {
        count.filmCount += 1
    } else if obj is Music {
        count.musicCount += 1
    }
}
print("В вашем плеере находится \(count.filmCount) - фильма и \(count.musicCount) - песни")

for value in mediaArray {
    if let musics = value as? Music {
        print("Song \(musics.name) by \(musics.artist)")
    } else if let films = value as? Film {
        print("Movie \(films.name) director \(films.director)")
    }
}

print("Hello, World!")
