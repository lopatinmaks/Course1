import UIKit
import Darwin

//ТЕОРИЯ, УРОКИ!!!

//class Vehicle {
//    var currentSpeed = 0.0
//    var description: String {
//        return "движется на скорости \(currentSpeed) миль в час"
//    }
//    func maceNoise() {
//
//    }
//}
//let someVehicle = Vehicle()
//print("Транспорт \(someVehicle.description)")
//
//class Bicycle: Vehicle {
//    var hasBasket = false
//}
//let bicycle = Bicycle()
//bicycle.hasBasket = true
//bicycle.currentSpeed = 15.0
//print("Велосипед \(bicycle.description)")
//
//class Tandem: Bicycle {
//    var currentNumberOfPassenger = 0
//}
//let tandem = Tandem()
//tandem.hasBasket = true
//tandem.currentNumberOfPassenger = 2
//tandem.currentSpeed = 22.0
//print("Тандем \(tandem.description)")


//СКУТАРЕНКО

//class Human {
//    var firstName: String = ""
//    var lastName: String = ""
//
//    var fullName: String {
//        return firstName + " " + lastName
//    }
//    func sayHello() -> String {
//        return "Hello"
//    }
//}
//class SmartHuman: Human {
//
//}
//class Student: SmartHuman {
//    override func sayHello() -> String {
//        return super.sayHello() + ", my friend"
//    }
//}
//class Kid: Human {
//    override func sayHello() -> String {
//        return "Agu"
//    }
//    override var fullName: String {
//        return firstName
//    }
//    override var firstName: String {
//        set {
//            super.firstName = newValue + " ;)"
//        }
//        get {
//            return super.firstName
//        }
//    }
//    override var lastName: String {
//        didSet {
//            print("new value" + " = " + self.lastName)
//        }
//    }
//}
//let human = Human()
//human.firstName = "Alex"
//human.lastName = "Skutarenko"
//human.sayHello()
//
//let student = Student()
//student.firstName = "Max"
//student.lastName = "Lopatin"
//student.sayHello()
//
//let kid = Kid()
//kid.firstName = "Bogdan"
//print(kid.firstName)
//kid.lastName = "Lopatin"
//kid.sayHello()
//
//let array = [kid, student, human] // полиморфизм
//for value in array {
//    print(value.sayHello())
//}
//
////ЗВЕРИК
//
//class People {
//    var name = "John"
//    var lastName = "Smith"
//    var fullName: String {
//        return name + " " + lastName
//    }
//    func printesMethod() -> String {
//        return "Your name - "
//    }
// }
//class Man: People {
//    override func printesMethod() -> String { //перезапись
//        return super.printesMethod() + "Jack"
//    }
//}
//let people = People()
//people.name
//people.printesMethod()
//let man = Man()
//man.fullName
//man.printesMethod()
//
////--------------------Инкапсуляция---------------
//class Boys {
//    var firstName = "Bob"
//    private var lastName = "Michel"
//    func printHi() {
//        print("Hi")
//    }
//}
//class Girls: Boys {
//
//}
//let girls = Girls()
//girls.printHi()
//
////-----------------------Полиморфизм
//
//class General {
//    func method() {
//        print("Hello")
//    }
//}
//class People1: General {
//    override func method() {
//        print("Hi, people1")
//    }
//}
//class People2: General {
//    override func method() {
//        print("Hi people2")
//    }
//}
//let general = General()
//let people1 = People1()
//let people2 = People2()
//
//var arrayOne = [general, people1, people2]
//for object in arrayOne {
//    print(object.method())
//}

//-------------------------------HomeWork----------------------

//1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".

class People {
    var name: String = ""
    var height: String = ""
    var weight: String = ""
    var gender: String = ""

    func say() -> String {
        return "Hello"
    }
}

//2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.

class Cook: People {
    override func say() -> String {
        return super.say() + ", welcome to our restaurant"
    }
}

class Manager: People {
    override func say() -> String {
        return super.say() + ", how can i help you?"
    }
}

class Wrestler: People {
    override func say() -> String {
        return super.say() + ", welcome to hell"
    }
}
//3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.

let cook = Cook()
let manager = Manager()
let wrestler = Wrestler()

var humans = [cook, manager, wrestler]

//4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".

cook.name = "Philipp"
cook.height = "178"
cook.weight = "98"
cook.gender = "M"

manager.name = "Irina"
manager.height = "167"
manager.weight = "57"
manager.gender = "W"

wrestler.name = "Bruno"
wrestler.height = "201"
wrestler.weight = "110"
wrestler.gender = "M"

for date in humans {
    print("Name - \(date.name), height - \(date.height), weight - \(date.weight), phrase - \(date.say())")
}

//5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.

class Driver: People {
    let auto = "Uaz"
    let experience = 12
    override func say() -> String {
        return super.say() + ", where are we going?"
    }
}
let driver = Driver()
driver.name = "Valerio"
driver.height = "177"
driver.weight = "85"
driver.gender = "M"
humans.append(driver)

for date in humans {
    print("Name - \(date.name), height - \(date.height), weight - \(date.weight), phrase - \(date.say())")
}

//6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.

final class Photographer: People {
    override func say() -> String {
        return super.say() + ", i'm Olga"
    }
}
let photographer = Photographer()
photographer.name = "Olga"
photographer.height = "164"
photographer.weight = "54"
photographer.gender = "W"

humans.append(photographer)

for newElement in humans {
    print(newElement.say(), newElement.name, newElement.height, newElement.weight, newElement.gender)
}

//7. Вывести все это в обратном порядке(Google в помощь).

for (date, meaning) in humans.enumerated().reversed() {
    print(date, meaning.name)
}

//8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).

class Martian {
    var race = "Bambola"
    var hands = 12
    var head = 2

    func say() -> String {
        return "Ku"
    }
}
let martian = Martian()

//9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".

class Pluto: Martian {
    override func say() -> String {
        return "Amukago"
    }
}
let pluto = Pluto()

class Saturn: Martian {
    override func say() -> String {
        return "Saturino"
    }
}
let saturn = Saturn()

//10. Объединить всех people и Марсианинов) в один массив.

var classes = Array<AnyObject>()
classes = [cook, manager, wrestler, driver, photographer, martian, saturn, pluto]

//11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод
