import UIKit
import Foundation

//ТЕОРИЯ, УРОКИ!!!

//struct Student {
//    var firstName: String {
//        willSet {
//            print("will set " + newValue + " instead of " + firstName)
//        }
//        didSet {
//            print("did set " + firstName + " instead of " + oldValue)
//
//            firstName = firstName.capitalized
//        }
//    }
//    var lastName: String{
//        didSet {
//            lastName = lastName.capitalized
//    }
//}
//    var fullName: String {
//        get {
//            return firstName + " " + lastName
//        }
//        set {
//            print("fullName wants to be set to " + newValue)
//
//            let words = newValue.components(separatedBy: " ")
//            if words.count > 0 {
//                firstName = words[0]
//            }
//            if words.count > 1 {
//                lastName = words[1]
//            }
//        }
//    }
//}
//
//var student = Student.init(firstName: "Maks", lastName: "Lopatin")
//student.firstName
//student.lastName
//student.fullName
//
//student.firstName = "Bob"
//
//student.firstName
//student.lastName
//student.fullName
//
//student.fullName = "Ivan Ivanov"
//student.firstName
//student.lastName
//student.fullName
//
////SwiftDevelopers
//
//struct Observer {
//    var name: String {
//        willSet {
//print("Внимание! Значение хочет измениться на" + " = " + newValue)
//        }
//        didSet {
//print("didSet" + " = " + oldValue)
//            if name != "" {
//                name = name.capitalized
//            }
//        }
//    }
//}
//var observer = Observer(name: "Jack")
//observer.name //get
//observer.name = "ivan"//set
//print(observer.name)
//
//struct ComputerProperty {
//    var firstName: String {
//        didSet {
//            if firstName != "" {
//                firstName = firstName.capitalized
//            }
//        }
//    }
//    var lastName: String {
//        didSet {
//            if lastName != "" {
//                lastName = lastName.capitalized//так можно ограничивать возраст, количество букв и тд
//            }
//        }
//    }
//    var fullName: String {
//        get {
//return firstName + " " + lastName
//        }
//        set {
//print("setter is work" + " " + newValue)
//        }
//    }
//}
//var compProp = ComputerProperty(firstName: "Olga", lastName: "Borisova")
//compProp.fullName
//print(compProp.fullName)
//
//compProp.lastName = "lOPatina"
//print(compProp.fullName)
//
////Свойства типов
//
//let MaxNameLenght = 15
//
//class Human {
//    var name: String {
//        didSet {
//            if name.count > MaxNameLenght {
//                name = oldValue
//            }
//        }
//    }
//    class var maxAge: Int {
//        return 100
//    }
//    var age: Int {
//        didSet {
//            if age > Human.maxAge {
//                age = oldValue
//            }
//    }
//    }
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//struct Cat {
//    var name: String {
//        didSet {
//            if name.count > MaxNameLenght {
//                name = oldValue
//            }
//        }
//    }
//    static let maxAge = 20
//    static var totalCats = 0
//    var age: Int {
//        didSet {
//            if age > Cat.maxAge {
//                age = oldValue
//            }
//        }
//    }
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//
//        Cat.totalCats += 1
//    }
//}
//
//let human = Human(name: "Peter", age: 40)
//var cat = Cat(name: "White", age: 10)
//
//human.age = 1000
//cat.age = 50
////Cat.totalCats
//var cat1 = Cat(name: "White", age: 10)
//var cat2 = Cat(name: "White", age: 10)
//Cat.totalCats
//
//
//
//
//let MaxLenght = 15
//
//var str = "Свойства типа"
//struct MyStruct {
//    static var count = 0
//    var name = String() {
//        didSet {
//            if name.count > MaxLenght {
//                name = oldValue
//                print("Очень длинное имя, введите корректное имя")
//            }
//        }
//    }
//    init(name: String) {
//        self.name = name
//        MyStruct.count += 1
//    }
//}
//var struct1 = MyStruct(name: "Ivan")
//struct1.name = "asdfghjklytrewertyuikjhgf"
//print(struct1.name)
//var struct2 = MyStruct(name: "Olga")
//var struct3 = MyStruct(name: "Bogdan")
//var struct4 = MyStruct(name: "Nikita")
//
//print(MyStruct.count)
//
//class AgeBoy {
//    static var maxAge = 8
//    lazy var say = "I'm good"
//    var name = String() {
//        didSet {
//            if name.count > MaxLenght {
//                name = oldValue
//                print("Очень длинное имя, введите корректное имя")
//            }
//        }
//    }
//    var age = 8 {
//        didSet {
//            if age < AgeBoy.maxAge {
//                age = oldValue
//                print("Приводите детей от6 до 8 лет")
//            }
//        }
//    }
//}
//var ageClass = AgeBoy()
//ageClass.name = "Ivan"
//ageClass.age = 8
//ageClass.say


//----------------------------------------------------------------


//Создать класс "IOSStudents",добавить ему property: dateOfBirth, skills. Для тренировки. Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.

let MaxDateOfBirth = 10
let MaxLenghtSkills = 100

class IOSStudents {
    var dateOfBirth: String {
        didSet {
            if dateOfBirth.count > MaxDateOfBirth {
                dateOfBirth = oldValue
                print("Введите корректную дату рождения")
            }
        }
    }
    var skills: String {
        didSet {
            if skills.count > MaxLenghtSkills {
                skills = oldValue
                print("Не превышайте количество символов")
            }
        }
    }
    init(dateOfBirth: String, skills: String) {
        self.dateOfBirth = dateOfBirth
        self.skills = skills
    }
}

struct MyWife {
    var name: String {
        didSet {
            name = name.capitalized
        }
    }
    var surname: String {
        didSet {
            surname = surname.capitalized
        }
    }
    var fullname: String {
        return name + " " + surname
    }
}
let wife = MyWife.init(name: "Olga", surname: "Borisova")
wife.name
wife.surname
wife.fullname

//Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C.
//И создать 2 вычисляемых свойства - те же угол А,угол С.
//И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
//Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.

struct CreateTriangle {
    var angleA: Int
    var angleC: Int
    var angleSum = 180
    var angleB: Int {
        return angleSum - (angleA + angleC)
    }
}
let triangle = CreateTriangle(angleA: 50, angleC: 60)
print("Значение третьего угла = \(triangle.angleB)")

//Создать структуру "Резюме", у которой есть такие свойства:
//- Фамилия,
//- Имя.
//- Должность,
//- Опыт,
//- Контактные данные(телефон, емейл),
//- О себе(можно записать какие-то пару предложений на выбор).

let MaxAboutMyself = 100

struct Resume {
    var surname: String {
        didSet {
            surname = surname.capitalized
        }
    }
    var name: String {
        didSet {
            name = name.capitalized
        }
    }
    var position: String {
        didSet {
            print("Студент")
        }
    }
    var experience: String {
        didSet {
            print("Без коммерческого опыта")
        }
    }
    var contacts = String()
    var about: String {

        didSet {
            if about.count > MaxAboutMyself {
                about = oldValue
                print("Сократите количество символов")
            }
        }
    }
}
let resume = Resume(surname: "Lopatin", name: "Maksim", position: "Student", experience: "No experience", about: "I'm good")
print(resume)

//Задание на закрепление предыдущих тем:
//Создать журнал, что б можно было писать имя, фамилию и оценку
//Поставить ограничения: имя и фамилия не выше 15 символов каждое.
//И оценка не выше 5.
//Если везде значения превышаться выдавать об этом Сообщения в консоль.

let MaxLenght = 15
let MaxGrade = 5

struct Journal {
    var name: String {
        didSet {
            if name.count > MaxLenght {
                name = oldValue
                print("Введите имя корректно")
            }
        }
    }
    var surname: String {
        didSet {
            if surname.count > MaxLenght {
                surname = oldValue
                print("Введите фамилию корректно")
            }
        }
    }
    var grade: Int {
        didSet {
            if grade > MaxGrade {
                grade = oldValue
                print("\(grade) выставлена не корректно, повторите ввод")
            }
        }
    }
}
var name = Journal(name: "Vitya", surname: "Toporikov", grade: 4)
name.grade = 6
name.surname = "hjkljhgfdsxcvbnmkjhgfdcvbnm"
name.name = "zserdxdftgfcvghuhbnjkjmnmklk"

//Написать класс,в котором есть 4 функции:
//-пустая, которая просто выводит сообщение через print,
//- которая принимаете параметры и выводит их в консоль,
//- которая принимает и возвращает параметры.
//- которая принимает замыкание и распечатывает результаты в консоль

class FourFunctions {
    func one() {
        print("Hello, my friend!")
    }
    func two(name: String, surname: String) {
        print(name, surname)
    }
    func three(numberOne: Int, numberTwo: Int) -> Int {
        return numberOne * numberTwo
    }
    func four(_ s1: String, _ s2: String) -> Bool {
        return s1 > s2
    }
}
