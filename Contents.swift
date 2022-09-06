import UIKit

//1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.

let number = 10
var numberOne = 12
Int.max
Int.min

let numberTwo: UInt = 13
var numberThree: UInt = 1
UInt.max
UInt.min

let numberFour: Float = 2.15
var numberFive: Float = 1.18

let numberSix = 1.8
var numberSeven = 2.8

let string = "Maksim"
let stringOne = "Olga"


//2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

typealias Goods = Double

let fruit = "apple"
let quantityAppleKilo = 5

let fruitOne = "banana"
let quantityBananaKilo = 6.5

let fruitTwo = "lemon"
let quantityLemonKilo = 2

let sumFruits = Goods(quantityAppleKilo) + quantityBananaKilo + Goods(quantityLemonKilo)

//3) Напишите различные выражения с приведением типа.

let numberInt: Int = 5
let kilo: Double = 2.5
let tochkaPi: Float = 3.14
let myName: String = "Maksim"


//4) Посоздавайте свои переменные и константы. Имена, возраст, отчества и тд.

let myNameOne = "Maksim"
var myWifeName = "Olga"

let myAge = 32
var age = 10

let patronymic = "Yurevich"
var myPatronymic = "Yurevich"

//5) По-создавайте свои типы данных через typealias

typealias Day = Int

let december: Day = 31
let yanuary: Day = 31
let february: Day = 28


//6) Создайте различные выражения с приведением типа


//7) Так же как в математеке поиграйтесь с выражениями -, +, /

let winterDay = december + yanuary + february
print(winterDay)

let difDayOfWinter = yanuary - february
difDayOfWinter

let weekDay = 7

let howManyWeeksInFeb = february / weekDay
howManyWeeksInFeb

let howManyWeeksInDec = Goods(december) / Goods(weekDay)
howManyWeeksInDec


//8) По создавайте свои строки

let myNameTwo = "Maksim"
let surname = "Lopatin"
let patronymicOne = "Yurevich"
let fullName = myNameTwo + " " + patronymicOne + " " + surname
fullName


//9) Создайте различные выражения с приведением типа


//10) Так же поработайте с циклом for in как в уроке

for character in fullName {
    print(character)
}


//11) Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п.

let nameFive = "Maksim"
let surnameTwo = "Lopatin"
let ageOne = 32
let maritalStatus = "Married"
let children = 2
let cityOfResidence = "Izhevsk"
let hobby = "Football"


//12) Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.

print("My name is \(nameFive)\nMy surname is \(surnameTwo)\nMy age is \(ageOne) years old\nMarital status - \(maritalStatus)\nChildren - \(children)\nI live in the city of \(cityOfResidence)\nMy hobby is \(hobby)")


//13) Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах переносы на новую строку и пробелы (см. \n и \t).
let figureOne = "One"
let figureTwo = "Two"
let figureThree = "Three"
let figureFour = "Four"
let figureFive = "Five"
let figureSix = "Six"
let figureSeven = "Seven"
let figureEight = "Eight"
let figureNine = "Nine"
let figureTen = "Ten"

print("Translation from Russian into English: \nОдин - \(figureOne)\nДва - \(fruitTwo)\nТри - \(figureThree)\nЧетыре - \(figureFour)\nПять - \(figureFive)\nШесть - \(figureSix)\nСемь - \(figureSeven)\nВосемь - \(figureEight)\nДевять - \(figureNine)\nДесять - \(figureTen)")



//14) Разбейте собственное имя на символы, перенося каждую букву на новую строку.
let nameFour = "Maksim"
for character in nameFour {
    print(character)
}
//😍 Создайте переменную типа Int и переменную типа String.
//Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну строку.

var quantity = 10
var currency = "Dollars"
let sentence = String(quantity) + " " + currency
print(sentence)

