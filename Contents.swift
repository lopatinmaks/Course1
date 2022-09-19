import UIKit

//ТЕОРИЯ, УРОКИ!!!

//let array = ["a", "b", "c"]
//array[0]
//array[1]
//array[2]
//
//struct Family {
//    var father = "Father"
//    var mother = "Mother"
//    var kids = ["kid1", "kid2", "kid3"]
//
//    var count: Int {
//        return 2 + kids.count
//    }
//    subscript(index: Int) -> String? {
//        get {
//            switch(index) {
//            case 0: return father
//            case 1: return mother
//            case 2..<(1 + kids.count):
//                return kids [index - 2]
//            default: return nil
//            }
//        }
//        set {
//            let value = newValue ?? ""
//            switch(index) {
//            case 0: return father = value
//            case 1: return mother = value
//            case 2..<(1 + kids.count): kids [index - 2] = value
//            default: break
//            }
//        }
//    }
//    subscript(index: Int, suffix: String) -> String? {
//        var name = self[index] ?? ""
//        name += " " + suffix
//        return name
//    }
//}
//var family = Family()
//family.father
//family.mother
//family.count
//
//family[0]
//family[1]
//family[2]
//
//family[0] = "Daddy"
//family.father
//family[3] = "Baddy"
//family.kids[1]
//
//family[3]
//family[3, "the great"]!
//
//
//struct Field {
//    var dict = [String: String]()
//    func keyForColumn(column: String, andRow row: Int) -> String {
//        return column + String(row) + "a"
//    }
//    subscript(column: String, row: Int) -> String? {
//        get {
//            return dict[keyForColumn(column: column, andRow: row)]
//        }
//        set {
//            dict[keyForColumn(column: column, andRow: row)] = newValue
//        }
//    }
//}
//var field = Field()
//field["a", 5]
//field["a", 5] = "X"
//field["a", 5]

//-------------------------------------

/*

 class ИмяКласса {

 subscript(index: тип индекса) -> возвращаемый тип {
    get {
 возвратить значение и только чтение
        }
    set {
 записать ия значения только по индексу
        }
    }
 }
 */

//var dic = ["key": "value"]
//dic["key"]
//dic["mama"] = "Valya"
//dic
//
//var array = ["mama", "papa"]
//array[0]
//array[1]
//
//struct Table {
//    var multi: Int
//    subscript(index: Int) -> Int {
//        get {
//            return multi * index
//        }
//    }
//}
//var tableResult = Table(multi: 3)
//tableResult[10]

//struct Man {
//    var man1 = "man1: Hello"
//    var man2 = "man2: I'm good"
//    var man3 = "man3: Hi"
//
//    subscript(index: Int) -> String? {
//        get {
//            switch index {
//            case 0: return man1
//            case 1: return man2
//            case 2: return man2
//            default: return ""
//            }
//        }
//        set {
//            let bambaleylo = newValue ?? ""
//            switch index {
//            case 0: return man1 = bambaleylo
//            case 1: return man2 = bambaleylo
//            case 2: return man2 = bambaleylo
//            default: break
//            }
//        }
//    }
//}
//var say = Man()
//say[0] = "Hi, Bob"
//
//say.man1
//say[0]


//---------------------------------------HOMEWORK----------------------------

//Создать класc, в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.

class Family {
    var father = "Daddy"
    var mother = "Mommy"
    var kids = ["Bogdan", "Nikita"]

    var count: Int {
        return 2 + kids.count
    }
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return father
            case 1: return mother
            case 2..<(2 + kids.count):
                return kids[index - 2]
            default: return nil
            }
        }
    }
}
var family = Family()
family[0]
family[1]
family[2]
family[3]

//Создать Индекс который будет принимать число умножать его на 100 и делить на 2.

struct Calculate {
    var number: Int
    subscript(index: Int, divisor: Int) -> Int {
        return (number * index) / divisor
    }
}
var result = Calculate(number: 18)
result[100, 2]

//Создать свой subscript у которого внутри есть оператор if else.

struct Auto {

    subscript(speed: Int) -> String {
        if speed > 100 {
            return ("Сбавь скорость")
        } else {
            return ("Все в порядке")
        }
    }
}
let auto = Auto()
auto[110]

//Создать класс человек и в нем 3 проперти имя , возраст пол .

class Human {
    init(name: String, age: Int, gender: String) {
    }
}

//Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства .

class Wife: Human {
    override init(name: String, age: Int, gender: String) {
        super.init(name: "Olga", age: 35, gender: "Woman")
    }
}

class Mother: Human {
    override init(name: String, age: Int, gender: String) {
        super.init(name: "Valentina", age: 57, gender: "Woman")
    }
}

//Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка (воспользоваться enum для типов данных)

enum RandomHuman {

    case hands(Int)
    case bodyTemperature(Double)
    case amountOfMoney(Float)
    case honest(Bool)
}
let resume = ["An ordinary person": RandomHuman.hands(2), "An ordinary person": RandomHuman.bodyTemperature(36.6), "An ordinary person": RandomHuman.amountOfMoney(10547428.36), "An ordinary person": RandomHuman.honest(true)]
