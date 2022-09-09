import UIKit

//1) Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.

let cabbage = "5.2"
let carrots = "2.1"
let potatoes = "1.5"
let apples = "1.8"
let pears = "1.9"

if Double(cabbage) != nil, Double(carrots) != nil, Double(potatoes) != nil, Double(apples) != nil, Double(pears) != nil {
    let total = Double(cabbage)! + Double(carrots)! + Double(potatoes)! + Double(apples)! + Double(pears)!
    print("Total weidht of products = \(total)")
}

//2)Создать 3 константы со значением nil.

let winter: String? = nil
let summer: String? = nil
let autumn: String? = nil

//3)Создать 5 опциональных типов констант и установите им значения.

let dayOfBirth: String?
dayOfBirth = "26.11.1989"

let myAge: String?
myAge = "32"

let dateBuyCar: String?
dateBuyCar = "29.06.2019"

let today: String?
today = "09.09.2022"

let newYear: String?
newYear = "01.01.2023"

//4)Вспоминаем прошлые уроки : Распечатайте свое имя в цикле for.

let myName = "Maksim"
for name in myName {
    print(name)
}

//5) Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.

let agePapa = "32"
let ageMama = "35"
let ageBogdan = "4"
let ageNikita = "1"
let ageGrandMother = "57"

let summaAge = [agePapa, ageMama, ageBogdan, ageNikita, ageGrandMother]

var sum = 0
for ages in summaAge {
    if Int(ages) != nil {
        sum += Int(ages)!
    }
}
print(sum)
