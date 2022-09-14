import UIKit
import Foundation

//3) Создайте по 1-2 enum разных типов.

enum Numbers: Int {
    case One = 1
    case Two = 2
    case Three = 3
}

enum Days: String {
    case Monday = "Monday"
    case Tuesday = "Tuesday"
    case Wednesday = "Wednesday"
    case Thursday = "Thursday"
    case Friday = "Friday"
    case Saturday = "Saturday"
    case Sunday = "Sunday"
}

//4) Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст,ФИО, стаж. Используйте switch как в видео.

enum Resume {
    case Sex
    case Age
    case Fullname
    case Experience
}
let resume = Resume.Fullname

switch resume {
case .Age:
    print("My age")
case .Experience:
    print("My experience")
case .Fullname:
    print("My fullname is Maksim Lopatin")
case .Sex:
    print("My sex")
}

enum Apple {
    case Round
    case Green
    case Sweet
    case Juicy
}

let apple = Apple.Juicy

switch apple {
case .Green:
    print("Apple is green")
case .Round:
    print("Apple is round")
case .Juicy:
    print("Apple is very juicy")
case .Sweet:
    print("Apple is sweet")
}

//5) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов. Пример результата в консоли "apple green", "sun red" и т.д.

enum Rainbow {
    case Red, Orange, Yellow, Green, Blue, Indigo, Violet
}

func things(what: String, color: String) -> String {
    return what + " " + color
}
let one = things(what: "Apple", color: "\(Rainbow.Green)")
print(one)
let two = things(what: "Sun", color: "\(Rainbow.Red)")
print(two)
let three = things(what: "Lemon", color: "\(Rainbow.Yellow)")
print(three)
let four = things(what: "Mandarin", color: "\(Rainbow.Orange)")
print(four)
let five = things(what: "Sky", color: "\(Rainbow.Blue)")
print(five)
let six = things(what: "Sweater", color: "\(Rainbow.Indigo)")
print(six)
let seven = things(what: "Flover", color: "\(Rainbow.Violet)")
print(seven)

//6) Создать функцию, которая выставляет оценки ученикам в школе.

var journal = [String: Int]()

func allStudents(name: String, grade: Int) {
    journal.updateValue(grade, forKey: name)
}
allStudents(name: "Maksim", grade: 5)
allStudents(name: "Olga", grade: 4)

print(journal)

//7) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.

enum MyCars: String {
    case LandRover = "Land Rover Evoque"
    case Nissan = "Nissan X- Trail"
    case Renault = "Renault Sandero"
    static let garage = [LandRover, Nissan, Renault]
}
for car in MyCars.garage {
    print("There are standing in my garage \(car.rawValue)")
}

//1) Напишите как понимаете enumerations:что это такое, в чем их смысл, зачем нужны. Ваше личное мнение: как и где их можно использовать?

//Добавляют красоты коду, позволяют сократить количество кода. В Enum можно создать много разных значения и потом постоянно использовать их в дальнейшем коде (например в функциях). Также они достаточно удобны при использовании switch.

//2) Написать по 5-10 enum разных типов + создать как можно больше своих enumerations. Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия. Пропустите их через switch и распечатайте (см.видео).

enum Continents: String {
    case Africa = "Egypt"
    case Australia = "Kangaroo"
    case Antarctica = "Lots of snow"
    case NorthAmerica = "Usa and Canada"
    case SouthAmerica = "Brazil"
    case Eurasia = "Russia"
}

let continents = Continents.Eurasia

switch continents {
case .Africa:
    print("There's an example here Egypt")
case .Antarctica:
    print("There's nothing here but snow")
case .Australia:
    print("There's a kangaroo here")
case .Eurasia:
    print("\(continents.rawValue) is located here")
case .NorthAmerica:
    print("USA and Canada is located here")
case .SouthAmerica:
    print("Brazil is located here")
}


enum NumbersPartTwo: Double {
    case One = 1.5
    case Two = 2.6
    case Three = 3.7
}

let numero = NumbersPartTwo.Two

switch numero {
case .One:
    print("number one")
case .Two:
    print("number two \(numero.rawValue)")
case .Three:
    print("number three")
}


enum Pencils: Int {
    case Yellow = 1
    case Red = 2
    case Green = 3
}

let pencils = Pencils.Red

switch pencils {
case .Yellow:
    print("Yellow pencil")
case .Red:
    print("Red pencil number \(pencils.rawValue)")
case .Green:
    print("Green pencil")
}


enum Fingers: String {
    case Large = "Большой"
    case Index = "Указательный"
    case Medium = "Средний"
    case Nameless = "Безымянный"
    case Little = "Мизинец"
}

let fingers = Fingers.Nameless

switch fingers {
case .Large:
    print("Thumb on the arm")
case .Index:
    print("Index finger on the arm")
case .Medium:
    print("Medium finger on the arm")
case .Nameless:
    print("Обручальное кольцо носят на \(fingers.rawValue) пальце")
case .Little:
    print("Little finger on the arm")
}


enum GramOfGold: Float {

    case Chain = 8.157
    case Ring = 12.578
    case Bracelet = 5.925
}

let gold = GramOfGold.Ring

switch gold {
case .Bracelet:
    print("He weighs the last")
case .Chain:
    print("Beautiful ring")
case .Ring:
    print("Precise weight in grams: \(gold.rawValue)")
}

//3) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.

enum MyResume: String {
    case Name = "Maksim"
    case Surname
    case Age
    case Profession
    case Skills
    case Education
    case Hobby
}


//Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было понимание читаемости и красоты кода.
//Дайте свою оценку первому и второму варианту написания.

let date = MyResume.Name

if date == MyResume.Name {
    print("My name is \(date.rawValue)")
}

switch date {
case .Age:
    print("I'm 32 years old")
case .Name:
    print("My name is \(date.rawValue)")
default:
    break
}

//Если говорить о данном примере, то отличий я не увидел, более показательны преимущества switch над if else, когда работаешь с цифрами, тогда switch предпочтительнее.


//4) Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».
//Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch.
//Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции.
//Итог программы: «Айфон — розовый».

enum AppleTech {
    case Red, Pink, Green, Brown
}

func colorsTech(technology: String, color: String) -> String {
    return technology + " " + color
}

colorsTech(technology: "MacBook", color: "\(AppleTech.Red)")
colorsTech(technology: "Ipad", color: "\(AppleTech.Green)")
let iphone = colorsTech(technology: "Iphone", color: "\(AppleTech.Pink)")
print(iphone)
colorsTech(technology: "Apple Watch", color: "\(AppleTech.Brown)")
