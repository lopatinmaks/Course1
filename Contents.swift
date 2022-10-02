import UIKit
import Foundation

//ТЕОРИЯ, УРОКИ!!!

//СКУТАРЕНКО

//protocol Priority {
//    var order: String {get}
//}
//
//protocol EntryName: Priority {
//    var label: String {get}
//}
//
//class Student: EntryName {
//    var firstname: String
//    var lastname: String
//    var fullname: String {
//        return firstname + " " + lastname
//    }
//    init(firstname: String, lastname: String) {
//        self.firstname = firstname
//        self.lastname = lastname
//    }
//    var label: String {
//        return fullname
//    }
//    let order = 1
//}
//
//class Animal {
//
//}
//
//class Cow: Animal, EntryName {
//    var name: String?
//
//    var label: String {
//        return name ?? "a cow"
//    }
//    let order = 2
//}
//
//struct Grass: EntryName {
//    var type: String
//
//    var label: String {
//        return "Grass" + type
//    }
//    let order = 3
//}
//
//let student1 = Student(firstname: "Maksim", lastname: "Lopatin")
//let student2 = Student(firstname: "Olga", lastname: "Borisova")
//let student3 = Student(firstname: "Ivan", lastname: "Ivanov")
//
//let cow1 = Cow()
//cow1.name = "Burenka"
//let cow2 = Cow()
//
//let grass1 = Grass(type: "Bermuda")
//let grass2 = Grass(type: "St. Augustin")
//
//var array:[EntryName] = [student1, student2, student3, cow1, cow2, grass1, grass2]
///*
//for value in array {
//    //1 способ
//    if let grass = value as? Grass {
//        print(grass.type)
//    } else if let student = value as? Student {
//        print(student.fullname)
//    } else if let cow = value as? Cow {
//        print(cow.name ?? "a cow")
//    }
//    //2 способ
//    switch value {
//    case let grass as Grass :
//        print(grass.type)
//    case let student as Student:
//        print(student.fullname)
//    case let cow as Cow:
//        print(cow.name ?? "just a cow")
//    default: break
//    }
//}*/
//
//func printFarm(array: inout [EntryName]) {
//
//    array.sort(by: {a, b in
//        if a.order == b.order {
//            return a.label.lowercased() < b.label.lowercased()
//        } else {
//            return a.order < b.order
//        }
//    })
//
//    for value in array {
//        print(value.label)
//    }
//}
//
//var array:[EntryName] = [student1, student2, student3, cow1, cow2, grass1, grass2]
//
//printFarm(array: array)

//ЗВЕРИК

//protocol OneProtocol {
//    var name: String { get set }
//    var age: String { get set }
//
//    //mutating func hello(text: String)
//}
//
//struct Parents: OneProtocol {
//    var name: String
//    var age: String
//}
//
//struct Kids: OneProtocol {
//    var name: String
//    var age: String
//}
//
//struct Cat: OneProtocol {
//    var name: String
//    var age: String
//}
//var parents1 = Parents(name: "Jack", age: "28")
//var parents2 = Parents(name: "Jina", age: "25")
//var kids = Kids(name: "Masha", age: "5")
//var cat = Cat(name: "Kot", age: "3")

//var array: [Any] = [parents1, parents2, kids, cat]
//
//for value in array {
//    if let parent = value as? Parents {
//        print(parent.name)
//    } else if let kid = value as? Kids {
//        print(kid.name)
//    } else if let kot = value as? Cat {
//        print(kot.name)
//    }
//}

//var array: [OneProtocol] = [parents1, parents2, kids, cat]
//
//func sortFamily(array: [OneProtocol]) {
//    for value in array {
//        print("\(value.name) - age = \(value.age)")
//    }
//}
//sortFamily(array: array)


//JustaSid

//func address(of object: UnsafeRawPointer) -> String {
//    let addr = Int(bitPattern: object)
//    return String(format: "%p", addr)
//}
//
//func address(off value: AnyObject) -> String {
//    return "\(Unmanaged.passUnretained(value).toOpaque())"
//}
//
//class SomeClass {
//    var checkString: String
//    init(_ checkString: String) {
//        self.checkString = checkString
//    }
//}
//
////пример копирования классов
//var obj1 = SomeClass("one")
//var obj2 = obj1
//
//address(off: obj1)
//address(off: obj2)

//пример копирования структур

//var number = 12345678
//var number2 = number
//
//address(of: &number)
//address(of: &number2)
//
////пример копирования массивов
//
//var arr = [1, 2, 3, 4, 5]
//var arr2 = arr
//address(of: arr)
//address(of: arr2)
//arr2[0] = 33
//address(of: arr)
//address(of: arr2)

//пример копирования строк

//var oneString = "some text some text some text some text some text some text some text some text some text some text some text some text some text some text v some text"
//var twoString = oneString
//
//address(of: oneString)
//address(of: twoString)
//
//twoString = "Another text"
//
//address(of: oneString)
//address(of: twoString)

//пример работы со своей структурой

//struct SomeStruct {
//    var checkString: String
//}
//var five = SomeStruct(checkString: "Five")
//var six = five
//address(of: &five)
//address(of: &six)
//
//six.checkString = "six"
//five.checkString
//
//address(of: &five)
//address(of: &six)
//
//struct Identifier {
//    var id = 1
//}
//class Ref<T> {
//    var value: T
//    init(value: T) {
//        self.value = value
//    }
//}
//struct Container<T> {
//    var ref: Ref<T>
//    init(value: T) {
//        self.ref = Ref(value: value)
//    }
//    var value: T {
//        get {
//            return ref.value
//        }
//        set {
//            guard (isKnownUniquelyReferenced(&ref)) else {
//                ref = Ref(value: newValue)
//                return
//            }
//            ref.value = newValue
//        }
//    }
//}
//var id = Identifier()
//var container1 = Container(value: id)
//var container2 = container1
//
//address(off: container1.ref)
//address(off: container2.ref)
//
//container2.value.id = 12
//address(off: container1.ref)
//address(off: container2.ref)



//------------------------------HomeWork--------------------


//3) Почитать про copy on write и понять что это такое - https://www.youtube.com/watch?v=66g_pD3s7TY

//+

//4) Реализовать структуру IOSCollection и создать в ней copy on write по типу - https://www.youtube.com/watch?v=QsoqHGgX2rE&t=594s

struct IOSCollection {
    var library = 7
}

class PersonalDate<T> {
    var info: T

    init(info: T) {
        self.info = info
    }
}

struct StoreHouse<T> {
    var date: PersonalDate<T>

    init(info: T) {
        self.date = PersonalDate(info: info)
    }
    var value: T {
        get {
            date.info
        }
        set {
            guard (isKnownUniquelyReferenced(&date)) else {
                date = PersonalDate(info: newValue)
                return
            }
            date.info = newValue
        }
    }
}
var library = IOSCollection()
var storeHouse1 = StoreHouse(info: library)
var storeHouse2 = storeHouse1
storeHouse2.value.library = 12


//5) Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол

protocol Hotel {
    init(roomCount: String)
}

class HotelAlfa: Hotel {
    var roomNumber: String
    required init(roomCount: String) {
        self.roomNumber = roomCount
    }
}

//6) Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так что б когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice" в консоле мы увидели такую строку - "Выпало 4 на кубике"

protocol GameDice {
    var numberDice: String { get }
}

extension Int: GameDice {
    var numberDice: String {
        return "Выпало \(self) на кубике"
    }
}
let diceCoub = 4
diceCoub.numberDice

//7) Создать протокол с одним методом и 2 мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство

protocol Date {
    var name: String? { get }
    var surname: String { get }

    func fullname() -> String
}

class Man: Date {
    var name: String?

    var surname: String

    init(name: String?, surname: String) {
        self.name = name
        self.surname = surname
    }

    func fullname() -> String {
        return String(name!) + " " + surname
    }
}

let dateOfMan = Man(name: "Maksim", surname: "Lopatin")
dateOfMan.fullname()
