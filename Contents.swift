import UIKit

//1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.

let a = 10
var b = 12
Int.max
Int.min

let a1: UInt = 13
var b1: UInt = 1
UInt.max
UInt.min

let a2: Float = 2.15
var b2: Float = 1.18

let a3 = 1.8
var b3 = 2.8

let str = "Maksim"
let str1 = "Olga"


//2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

typealias Goods = Double

let name = "apple"
let quantityAppleKilo = 5

let name1 = "banana"
let quantityBananaKilo = 6.5

let name2 = "lemon"
let quantityLemonKilo = 2

let sumFruits = Goods(quantityAppleKilo) + quantityBananaKilo + Goods(quantityLemonKilo)

//3) Напишите различные выражения с приведением типа.

let number: Int = 5
let kilo: Double = 2.5
let tochkaPi: Float = 3.14
let myName: String = "Maksim"


//4) Посоздавайте свои переменные и константы. Имена, возраст, отчества и тд.

let myName1 = "Maksim"
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

let myName2 = "Maksim"
let surname = "Lopatin"
let patronymic1 = "Yurevich"
let fullName = myName2 + " " + patronymic1 + " " + surname
fullName


//9) Создайте различные выражения с приведением типа


//10) Так же поработайте с циклом for in как в уроке

for c in fullName {
    print(c)
}


//11) Напишите с помощью строк своё резюме: имя, фамилия, возраст, где живете, хобби и т.п.

let name5 = "Maksim"
let surname2 = "Lopatin"
let age1 = 32
let maritalStatus = "Married"
let children = 2
let cityOfResidence = "Izhevsk"
let hobby = "Football"


//12) Соберите из этих строк 1 большую (вспоминаем интерполяцию) и выведите в консоль.

print("My name is \(name5)\nMy surname is \(surname2)\nMy age is \(age1) years old\nMarital status - \(maritalStatus)\nChildren - \(children)\nI live in the city of \(cityOfResidence)\nMy hobby is \(hobby)")


//13) Напишите 10 строк, соберите их с помощью интерполяции и поставьте в нужных местах переносы на новую строку и пробелы (см. \n и \t).
let a11 = "One"
let a22 = "Two"
let a33 = "Three"
let a4 = "Four"
let a5 = "Five"
let a6 = "Six"
let a7 = "Seven"
let a8 = "Eight"
let a9 = "Nine"
let a10 = "Ten"

print("Translation from Russian into English: \nОдин - \(a11)\nДва - \(a22)\nТри - \(a33)\nЧетыре - \(a4)\nПять - \(a5)\nШесть - \(a6)\nСемь - \(a7)\nВосемь - \(a8)\nДевять - \(a9)\nДесять - \(a10)")



//14) Разбейте собственное имя на символы, перенося каждую букву на новую строку.
let name4 = "Maksim"
for i in name4 {
    print(i)
}
//😍 Создайте переменную типа Int и переменную типа String.
//Тип Int преобразуйте в String и с помощью бинарного оператора сложите 2 переменные в одну строку.

var quantity = 10
var currency = "Dollars"
let sentence = String(quantity) + " " + currency
print(sentence)

