import UIKit

//ТЕОРИЯ, УРОКИ!!!

//ЗВЕРИК

var stringArray = ["Hi", "Hello", "Good bye"]
var intArray = [1, 2, 3, 4, 5, 3]
var doubleArray = [1.2, 1.5, 4.5]

//Generic

func printElementFromArray<T>(a: [T]) {
    for element in a {
        print(element)
    }
}
printElementFromArray(a: stringArray)
printElementFromArray(a: intArray)
printElementFromArray(a: doubleArray)

func doNothing<T>(x: T) -> T {
    return x
}
doNothing(x: "mama")
doNothing(x: 1234)
doNothing(x: false)

var emptyArray = [String]()
struct GenericArray<T> {
    var items = [T]()
    mutating func push(i: T) {
        items.append(i)
    }
}

var myFriendsList = ["Vova", "Bob", "Klim"]
var arrays = GenericArray(items: myFriendsList)
arrays.push(i: "Nick")
print(arrays)


//-------------------------HomeWork------------------------

//3) Создать любой generic для классов, структур, методов, перечислений( по 1 на каждый).

class Friends<T> {
    var name = [T]()
    func addToList(man: T) {
        name.append(man)
    }
}
var myFriend = ["Ilja, Ildar", "Anton"]
var add = Friends<Any>()
add.addToList(man: "Viktor")



var groceryBasket = [String]()
struct Product<T> {
    var eats = [T]()
    mutating func addInBasket(name: T) {
        eats.append(name)
    }
}
var myProductList = ["Banana", "Fish", "Lemon"]
var list = Product(eats: myProductList)
list.addInBasket(name: "Milk")



func printName<T>(name: [T]) {
    for letter in name {
        print(letter)
    }
}
printName(name: ["Maksim", "Viktor", "Alfred"])




enum Planets<T> {
    case Earth(T)
    case Saturn(T)
    case Pluton(T)
}
Planets.Earth("Земля")
Planets.Saturn("Сатурн")
Planets.Pluton("Плутон")


//4) Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)

func addToGarage<T>(brand: T) {
    var garage = [T]()
    garage.append(brand)
    print(garage)
}
addToGarage(brand: "Land Rover")
addToGarage(brand: "Nissan")
addToGarage(brand: "Mersedes")

//6) Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)

class Car {
    var brand: String
    var model: String
    var color: String
    var year: Int

    init(brand: String, model: String, color: String, year: Int) {
        self.brand = brand
        self.model = model
        self.color = color
        self.year = year
    }
}
extension Car {

    subscript(yearManufactureCar: Int) -> Int {
        let todayYears = 2022
        return todayYears - yearManufactureCar
    }
}

var myCar = Car(brand: "Nissan", model: "X- Trail", color: "Blue", year: 2019)
print("С момента покупки автомобиля прошло \(myCar[2019]) года")

