import UIKit

//ТЕОРИЯ, УРОКИ!!!
//--------------ARC-------------
//class Person {
//    var name = String()
//    init(name: String) {
//        self.name = name
//        print("\(name) инициализирован и создан в памяти")
//    }
//    deinit {
//        print("\(name) удален из памяти")
//    }
//}
//var ref1: Person?
//var ref2: Person?
//var ref3: Person?
//
//ref1 = Person(name: "Jack")
//ref2 = ref1
//ref3 = ref1
//
//ref1 = nil
//ref2 = nil
//ref3 = nil

//------------Цикл сильных ссылок или перекрестные ссылки---------------

//class Hotel {
//    let name: String
//    init(name: String) {
//        self.name = name
//    }
//    weak var apartment: Apartment?
//    deinit {
//        print("\(name) выезжает")
//    }
//}
//
//class Apartment {
//    let room: String
//    init(room: String) {
//        self.room = room
//    }
//    var hotel: Hotel?
//    deinit {
//        print("Апартаменты \(room) освобождаются")
//    }
//}
//var objHotel: Hotel?
//var objApartment: Apartment?
//objHotel = Hotel(name: "John Smith")
//objApartment = Apartment(room: "122")
//objHotel!.apartment = objApartment
//objApartment?.hotel = objHotel
//objHotel = nil
//objApartment = nil

//----------------бесхозная ссылка------

//class Country {
//    let name: String
//    var capitalCity: City!
//    init(name: String, capitalName: String) {
//        self.name = name
//        self.capitalCity = City(name: capitalName, country: self)
//    }
//}
//
//class City {
//    let name: String
//    unowned let country: Country
//    init(name: String, country: Country) {
//        self.name = name
//        self.country = country
//    }
//
//}
//var country = Country(name: "Russia", capitalName: "Moscow")
//print("Столицей страны \(country.name) является \(country.capitalCity.name)")



//---------------------------HomeWork---------------

//2 . Описать несколько структур – любой легковой автомобиль и любой грузовик.
//3. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//4. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//5. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

enum Actions {
    case engineOn
    case engineOff
    case open
    case closed
    case load
    case unload
}

struct Car {
    var brand: String
    let year: Int
    let trunkVolume: Int
    var engineOn = false
    var openWindows = false
    var luggage = 0
    var filledTrunkVolume = 0

    mutating func about(info: Actions) {
        switch info {
        case .engineOn:
            engineOn = true
            print("Автомобиль \(brand) заведен")
        case .engineOff:
            engineOn = false
            print("Автомобиль \(brand) выключен")
        case .open:
            openWindows = true
            print("Окна \(brand) открыты")
        case .closed:
            openWindows = false
            print("Окна \(brand) закрыты")
        case .load:
            if luggage <= 0 {
                print("Здесь пока пусто")
            } else if luggage > trunkVolume {
                print("Такая большая\(luggage) не влезет в багажник \(brand), тут багажник всего \(trunkVolume) литров")
            } else if luggage > (trunkVolume - filledTrunkVolume) {
                print("В нашей \(brand) места осталось вот столько \(trunkVolume - filledTrunkVolume)")
            } else {
                filledTrunkVolume += luggage
                print("Наша поклажа \(luggage) заботливо упихана в \(brand)")
            }
        case .closed:
            if filledTrunkVolume == 0 {
                print("В багажнике нашей \(brand) пусто!")
            } else {
                filledTrunkVolume -= luggage
                print("Из нашей \(brand) я забрал \(luggage) сумку, теперь там есть место для \(filledTrunkVolume)")
            }
        default: break
        }
    }
}

struct Truck {
    let brand: String
    let year: Int
    let trunkVolume: Int
    var engineOn = false
    var openWindows = false
    var luggage = 0
    var filledTrunkVolume = 0

    mutating func about(info: Actions) {
        switch info {
        case .engineOn:
            engineOn = true
            print("Автомобиль \(brand) заведен")
        case .engineOff:
            engineOn = false
            print("Автомобиль \(brand) выключен")
        case .open:
            openWindows = true
            print("Окна \(brand) открыты")
        case .closed:
            openWindows = false
            print("Окна \(brand) закрыты")
        case .load:
            if luggage <= 0 {
                print("Здесь пока пусто")
            } else if luggage > trunkVolume {
                print("Такая большая\(luggage) не влезет в багажник \(brand), тут багажник всего \(trunkVolume) литров")
            } else if luggage > (trunkVolume - filledTrunkVolume) {
                print("В нашей \(brand) места осталось вот столько \(trunkVolume - filledTrunkVolume)")
            } else {
                filledTrunkVolume += luggage
                print("Наша поклажа \(luggage) заботливо упихана в \(brand)")
            }
        case .closed:
            if filledTrunkVolume == 0 {
                print("В багажнике нашей \(brand) пусто!")
            } else {
                filledTrunkVolume -= luggage
                print("Из нашей \(brand) я забрал \(luggage) сумку, теперь там есть место для \(filledTrunkVolume)")
            }
        default: break
        }
    }
}

//6. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

var car = Car(brand: "Nissan", year: 2019, trunkVolume: 400, engineOn: true, openWindows: false, luggage: 178, filledTrunkVolume: 200)
car.brand = "Land Rover"
print(car.brand)
car.luggage = 0
print(car.luggage)
car.engineOn = false
print(car.engineOn)

//7. Положить объекты структур в словарь как ключи! а их названия как строки например var dict = [structCar: "structCar"]



//8. Почитать о Capture List (см ссылку ниже) - и описать своими словами и сделать скрин своего примера и объяснения https://www.hackingwithswift.com/articles/179/capture..

//Главное это борьба с утечкой памяти, чтобы этого избежать небходимо пользоваться weak(делать ссылку слабой) и unowned(бесхозная ссылка)

class Owner {
    var name: String
    weak var gender: Dog?

    init(name: String) {
        self.name = name
        print("Хозяина собаки зовут \(name)")
    }
    deinit {
        print("\(name) умер")
    }
}

class Dog {
    var nickName: String
    var hisOwner: Owner?

    init(nickName: String) {
        self.nickName = nickName
        print("Собака по кличке \(nickName) появилась у хозяина")
    }
    deinit {
        print("Собака по кличке \(nickName) безвозвратно утеряна")
    }
}
var owner: Owner?
var dog: Dog?
owner = Owner(name: "Samuel")
dog = Dog(nickName: "Charly")

//9. Набрать код который на белом скрине понять в чем там проблема и решить эту проблему

//10. У нас есть класс мужчины и его паспорта. Мужчина может родиться и не иметь паспорта, но паспорт выдается конкретному мужчине и не может выдаваться без указания владельца. Чтобы разрешить эту проблему, ссылку на паспорт у мужчины сделаем обычной опциональной, а ссылку на владельца у паспорта – константой. Также добавим паспорту конструктор, чтобы сразу определить его владельца. Таким образом, человек сможет существовать без паспорта, сможет его поменять или выкинуть, но паспорт может быть создан только с конкретным владельцем и никогда не может его сменить. Повторить все что на черном скрине и решить проблему соблюдая все правила!

class Man {
    let name: String
    var passport: Passport?

    init(name: String) {
        self.name = name
    }
    deinit {
        print("Мужчина \(name) удален из памяти")
    }
}

class Passport {
    let seriesAndNumber: Int
    unowned let man: Man

    init(seriesAndNumber: Int, man: Man) {
        self.seriesAndNumber = seriesAndNumber
        self.man = man
    }
    deinit {
        print("Паспорт \(seriesAndNumber) удален из памяти")
    }
}
var man: Man?
man = Man(name: "Ivan Ivanov")
man!.passport = Passport(seriesAndNumber: 9408124315, man: man!)
man = nil
