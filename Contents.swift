import UIKit

//Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.

let numbers = [5, 7, 3, 18, 9, 14, 26]
let numbersOne = numbers.sorted { (s1, s2) in s1 < s2}
print(numbersOne)
let numbersTwo = numbers.sorted { (s1, s2) in s1 > s2}
print(numbersTwo)

//Создать метод который запрашивает имена друзей, после этого имена положить в массив.Массив отсортировать по количеству букв в имени.

var nameFriends = [String]()

func allNames(name: String) {
    nameFriends.append(name)
}
allNames(name: "Viktor")
allNames(name: "James")
allNames(name: "Olga")
allNames(name: "Samanta")

let myFriends = nameFriends.sorted { (s1, s2) in s1.count < s2.count}
print(myFriends)

//Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.

var autoPark = [String: String]()

func myCars(brand: String, model: String) {
    autoPark.updateValue(model, forKey: brand)
}
myCars(brand: "Land Rover", model: "Evoque")
myCars(brand: "Nissan", model: "X- Trail")
print(autoPark)

//Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.

var object = [String]()
var indicator = [Int]()

func timeDifference(city: String, timeZone: Int) {
    if object.isEmpty && indicator.isEmpty {
        object.append(city)
        indicator.append(timeZone)
    } else if object.isEmpty {
        object.append(city)
    } else if indicator.isEmpty {
        indicator.append(timeZone)
    } else {print("Now arrays is not empty")}
}
timeDifference(city: "Moscow", timeZone: 2)
print("В городе \(object) к центральноевропейскому времени можно прибавлять \(indicator) часа")


//Написать 10 своих замыканий на примере сортировок массивов.

let one = [78, 15, 67, 23, 1, 89, 6]

let oneOne = one.sorted { (a1, a2) in a1 < a2}
print(oneOne)

let oneTwo = one.sorted(by: {$0 > $1})
print(oneTwo)

let nameMyFriends = ["Ilya", "Marina", "Ildar", "Irena", "Olga", "Anton"]

let oneThree = nameMyFriends.sorted { (b1, b2) in b1.count < b2.count}
print(oneThree)

let oneFour = nameMyFriends.sorted {(b1, b2) in b2.count < b1.count }
print(oneFour)

let fairyTale = ["Gold Fish", "Konek- Gorbunok", "Ruslan and Ludmila"]

let oneFive = fairyTale.sorted(by: >)
print(oneFive)

let colors = ["Red", "Green", "Blue", "Yellow", "Violet"]

let oneSix = colors.sorted { (c1, c2) in c1.count > c2.count}
print(oneSix)

let oneSeven = colors.sorted(by: {$0 < $1})
print(oneSeven)

let oneEight = colors.sorted(by: >)
print(oneEight)

let fishKilo = [2.5, 10.8, 3.4, 1.2]

let oneNine = fishKilo.sorted { (d1, d2) in d1 < d2}
print(oneNine)

let oneTen = fishKilo.sorted(by: {$0 > $1})
print(oneTen)

//Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.

var group = [String]()

func fruits(name: String) {
    if group.isEmpty {
        group.append(name)
    } else if group.isEmpty {
        group.append(name)
    } else {print("Now arrays is not empty")}
}
fruits(name: "Banana")
print("В пустом массиве теперь появился \(group)")


//Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.

var date = [String]()
func personal(name: String, surname: String, nikName: String, mail: String, parol: String) {
    date.append(name)
    date.append(surname)
    date.append(nikName)
    date.append(mail)
    date.append(parol)

    print(date)
}
personal(name: "Maksim", surname: "Lopatin", nikName: "SuperMaks", mail: "a@mail.ru", parol: "Mama")

//Написать функции которые принимают в качестве аргументов массивы и словари и проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль.

var wife = [String]()

func myFavorites(name: String) {
    if wife.isEmpty {
        wife.append(name)
    } else if wife.isEmpty {
        wife.append(name)
    } else {print("Now arrays is not empty")}
}
myFavorites(name: "Olga")

print("Моя жена \(wife)")



var myAuto = [String: String]()

func autoPark(brand: String, model: String) {
    if myAuto.isEmpty {
        myAuto.updateValue(model, forKey: brand)
    } else {print("Now arrays is not empty")}
}
autoPark(brand: "Nissan", model: "X- Trail")
print(myAuto)
