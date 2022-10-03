import UIKit
import Darwin

//ТЕОРИЯ, УРОКИ!!!

//ЗВЕРИК

//MARK: - Protocol

protocol RouterDelegate {
    var nameID: [String] {get set}
    func saveName(name: String, text: String)
}
protocol UsersProtocol {
    var name: String {get set}
    var age: Int {get set}

    var delegate: RouterDelegate? {get set }

    init(name: String, age: Int, delegate: RouterDelegate?)
}

//MARK: - Class

class Router: RouterDelegate {
    var nameID: [String] = []
    func saveName(name: String, text: String) {
        nameID.append(name)
        nameID.append(text)
    }
}

class User: UsersProtocol {
    var name: String
    var age: Int

    var delegate: RouterDelegate?

    func sendMail(name: String, text: String) -> Bool {
        delegate?.saveName(name: name, text: text)
        return true
    }
    required init(name: String, age: Int, delegate: RouterDelegate?) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}
let routerDelegate = Router()
let user = User(name: "John", age: 23, delegate: routerDelegate)
user.sendMail(name: "Sergey", text: "Hello, Sergey")
user.sendMail(name: "Mama", text: "Mom, i'm ok")

routerDelegate.nameID

//MARK: HomeWork

//1) Изучить раздел "Протоколы -> Делегирование" в документации.
//2) Проработать код из видео.
//3) Создать протокол BatmanProtocol у которого свойство name.

protocol BatmanProtocol {
    var name: String {get}
}

//4) Добавить дефолтную реализацию протоколу BatmanProtocol через экстеншен добавить свое имя.

extension BatmanProtocol {
    var myName: String {
        return "Меня зовут\(name)."
    }
}

//5) Создать класс Batman подписатся на протокол BatmanProtocol, создать обьект класса и распечатать name.

class Batman: BatmanProtocol {
    var name: String

    init(name: String) {
        self.name = name
    }
}
let batman = Batman(name: "Maksim")

print("Меня зовут - \(batman.name)")

//6) Создать протокол с 2 мя методами 1 из них должен быть опциональным (optional).

@objc protocol TwoMethods {
    @objc optional func oneMethod()
    func two()
}

//7) Создать протокол с ассоциативным типом и создать 2 разных класса которые реализуют этот протокол. В 1 м классе 1 тип в другом другой тип.

protocol Vehicles {
    associatedtype OnWhat

}

class Car: Vehicles {
    typealias OnWhat = String
    func goingByCar() {
        print("Я еду на автомобиле")
    }
}

class Bicycle: Vehicles {
    typealias OnWhat = Int

    func goingByBicycle() {
        print("Я еду на одном велосипеде")
    }
}
//8) Создать протокол GoToShopDelegate с методом run.

protocol GoToShopDelegate {
    var phrase: String {get set}

    func run() -> String
}

protocol Action {
    var delegate: GoToShopDelegate? {get set}

    init(delegate: GoToShopDelegate?)
}

//9) Создать класс мама и класс сын. Использовать паттерн delegate что б мама отправляла сына за хлебом.

class Mom: GoToShopDelegate {
    func run() -> String {
        return ""
    }

    var phrase: String = ""
}

class Son {
    var delegate: GoToShopDelegate?
}
let momPhrase = Mom()
momPhrase.phrase = "Сын, сходи за хлебом"
print(momPhrase.phrase)
