import UIKit
import Darwin

//ТЕОРИЯ, УРОКИ!!!

//extension SomeType {
//    //описываем новую функциональность для типа SomeType
//}
//extension SomeType: SomeProtocol, AnotherProtocol {
//    //реализация требований протокола тут
//}

//extension Double {
//    var km: Double {return self * 1000.0}
//    var m: Double {return self}
//    var cm: Double {return self / 100.0}
//    var mm: Double {return self / 1000.0}
//    var ft: Double {return self / 3.28084}
//}
//let oneInch = 25.4.mm
//print("Один дюйм это \(oneInch) метра")
//let threeFeet = 3.ft
//print("Три фута это \(threeFeet) метра")
//
//let aMarathon = 42.km + 195.m
//print("Марафон имеет длину \(aMarathon) метра")
//
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Rect {
//    var origin = Point()
//    var size = Size()
//}
//let defaultRect = Rect()
//let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
//                          size: Size(width: 5.0, height: 5.0))
//extension Rect {
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
//                      size: Size(width: 3.0, height: 3.0))
//
//extension Int {
//    func repetitions(task: () -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}
//3.repetitions {
//    print("Hello!")
//}
//
//extension Int {
//    mutating func square() {
//        self = self * self
//    }
//}
//var someInt = 3
//someInt.square()
//
//extension Int {
//    subscript(digitIndex: Int) -> Int {
//        var decimalBase = 1
//        for _ in 0..<digitIndex {
//            decimalBase *= 10
//        }
//        return (self / decimalBase) % 10
//    }
//}
//746381295[0]
//746381295[1]
//746381295[2]
//
//extension Int {
//    enum Kind {
//        case negative, zero, positive
//    }
//    var kind: Kind {
//        switch self {
//        case 0:
//            return .zero
//        case let x where x > 0:
//            return .positive
//        default:
//            return .negative
//        }
//    }
//}
//func printIntegerKinds(_ numbers: [Int]) {
//    for number in numbers {
//        switch number.kind {
//        case .negative:
//            print("- ", terminator: "")
//        case .zero:
//            print("0", terminator: "")
//        case .positive:
//            print("+ ", terminator: "")
//        }
//    }
//    print("")
//}
//printIntegerKinds([3, 19, -27, 0, -6, 0, 7])

//СКУТАРЕНКО

//extension Int {
//    var isEven: Bool {
//        return self % 2 == 0
//    }
//    var isOdd: Bool {
//        return !isEven
//    }
//    enum EvenOrOdd {
//        case Even
//        case Odd
//    }
//    var evenOrOdd: EvenOrOdd {
//        return isEven ? .Even : .Odd
//    }
//    func pow(value: Int) -> Int {
//        var temp = self
//        for _ in 1..<value {
//            temp *= self
//        }
//        return temp
//    }
//   mutating func powTo(value: Int) {
//        self = pow(value: value)
//    }
//    var binaryString: String {
//        var result = ""
//        for i in 0..<8 {
//            result = String(self & (1 << i) > 0) + result
//        }
//        return result
//    }
//}
//extension String {
//    init(value: Bool) {
//        self.init(_ value ? 1 : 0)
//    }
//}
//
//
//extension Int.EvenOrOdd {
//    var string: String {
//        switch self {
//        case .Even:
//            return "even"
//        case .Odd:
//            return "odd"
//        }
//    }
//}
//
//
//var a = 5
//if a.isOdd {
//    print("a")
//}
//
//a.evenOrOdd.string
//
//a.pow(value: 2)
//a.pow(value: 5)
//a
//
//a.powTo(value: 4)

//ЗВЕРИК

//extension String {
//    func sayHello() {
//        print("Hello")
//    }
//}
//var hello = "Hi"
//hello.sayHello()
//
//var a = String()
//a.sayHello()
//"Hi".sayHello()
//
//extension Int {
//    var squared: Int {
//        return (self * self)
//    }
//}
//var newInt = 30
//newInt.squared
//
//extension Int {
//    func funcSquared() -> Int {
//        return (self * self)
//    }
//}
//var sqrInt = 3
//sqrInt.funcSquared()
//
//140.funcSquared()
//340.squared
//
//class Vova {
//    var nick = "The Swift dev"
//}
//let realVova = Vova()
//realVova.nick
//
//extension Vova {
//    func allSelf() -> String {
//        return "My name is Vova, my nick - \(nick)"
//    }
//}
//var secondVova = Vova()
//secondVova.allSelf()


//--------------------------------HomeWork-----------------------


//3)Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

extension String {
    subscript(range: Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: range.startIndex)
        let end = self.index(start, offsetBy: range.endIndex)
        return String(self[start..<end])
    }
}
var welcome = "Hello, World"
print(welcome[0..<3])

//4) Расширить Int и добавить 3 метода возведение в квадрат, куб, степень

extension Int {
    func squared() -> Int {
        return (self * self)
    }
    func cube() -> Int {
        return (self * self) * self
    }
    func degree(number: Int) -> Int {
        _ = pow(Double(self), Double(number))
        return (Int(number))
    }
}
var square = 3
square.squared()
square.cube()
square.degree(number: 5)

//5)Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано

struct WeightInUsa {
    var pound: Double = 0
    mutating func weight(kilo: Double) {
        pound = kilo
    }
}
var cabbage = WeightInUsa()
cabbage.weight(kilo: 10.5)

extension WeightInUsa {
    func conversion() {
        print("Русская капуста весит в США \(pound * 0.45) паундов")
    }
}
cabbage.conversion()
//в сша своя мера веса- паунд(равен примерно 0,45 кг), чтобы понимать этот вес в кг сделал такое расширение

struct Marathon {
    var km: Double = 0
    mutating func distance(a: Double) {
        km = a
    }
}
var dist = Marathon()
dist.distance(a: 42.195)

extension Marathon {
    func convers() {
        print("Расстояние марафонной дистанции равно \(km * 1000.0) метров")
    }
}
dist.convers()

//6)Добавьте проперти, которое возвращает количество символов в числе

extension Int {
    func number() {
        let new = String(self)
        print("В числе \(self) количество цифр - \(new.count)")
    }
}
777.number()

//7)Добавить метод который говорит число положительное или отрицательное

extension Int {
func evenOrOdd(grade: Int) {
        if grade > 0 {
            print("Число положительное")
        } else if grade < 0 {
            print("Число отрицательное")
        }
    }
}
let one = Int()
one.evenOrOdd(grade: 3)
let two = Int()
one.evenOrOdd(grade: -5)
