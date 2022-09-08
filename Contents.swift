import UIKit

//Создать 10 разных Dictionary с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

let monthsRus = ["Январь": 31, "Февраль": 28, "Март": 31, "Апрель": 30, "Май": 31, "Июнь": 30, "Июль": 31, "Август": 31, "Сентябрь": 30, "Октябрь": 31, "Ноябрь": 30, "Декабрь": 31]
let monthsEng = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]
let cars = ["Infinity": "QX70", "BMW": "2series", "Nissan": "X- Trail", "Reno": "Sandero"]
let pipls = ["Maksim": 32, "Olga": 35, "Bogdan": 4, "Nikita": 1]
let flowers = ["Rose": "Red", "Chamomile": "White", "Tulip": "Yellow"]
let capitalOfCountry = ["Russia": "Moscow", "France": "Paris", "Germany": "Berlin"]
let animals = ["Cat": 16, "Dog": 20, "Turtles": 300, "Parrot": 100]
let juice = ["Apple": "White", "Orange": "Orange", "Tomato": "Red"]
let rainbow = [1: "Red", 2: "Orange", 3: "Yellow", 4: "Green", 5: "Blue", 6: "Indigo", 7: "Violet"]
let seasons = ["Winter": "Cold", "Spring": "Rainy", "Summer": "Hot", "Autumn": "Sad"]

//Соберите все ключи и значения каждого Dictionary и распечатайте в консоль

for (key, value) in monthsRus {
    print("Месяц - \(key), количество дней - \(value)")
}
for (key, value) in monthsEng {
    print("Month - \(key), days - \(value)")
}
for (key, value) in cars {
    print("make - \(key), model - \(value)")
}
for (key, value) in pipls {
    print("name - \(key), age - \(value)")
}
for (key, value) in flowers {
    print("Name flower - \(key), colour - \(value)")
}
for (key, value) in capitalOfCountry {
    print("Country - \(key), capital - \(value)")
}
for (key, value) in animals {
    print("Animal - \(key), long live - \(value)")
}
for (key, value) in juice {
    print("Fruit - \(key), colour - \(value)")
}
for (key, value) in rainbow {
    print("Number - \(key), colour - \(value)")
}
for (key, value) in seasons {
    print("Season - \(key), \(value)")
}
//Создайте пустой Dictionary и через условный оператор if проверьте пустой он или нет если пустой то в условии добавьте в него пару значений􏰀

var emptiness = [String: String]()
if emptiness.isEmpty {
    emptiness["mama"] = "Tanya"
    emptiness["papa"] = "Tolya"
}

//Cоздайте словарь — ключ: «иномарка», «значение»: название машины.

var car = ["Иномарка": "Mercedes"]

//Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения в консоль. Затем отдельно только значения.
car["Отечественная"] = "Приора"

for (key, value) in car {
    print("key = \(key), model = \(value)")
}

for value in car.values {
    print(value)
}

//Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().

//car["Иномарка"] = nil
car.removeValue(forKey: "Иномарка")

//Создайте словарь, где ключ — фамилия солдата, а значение — его приветствие.

let soldiers = ["Иванов": "Здравия желаю", "Либерман": "Мое почтение", "Парасюк": "Здоровеньки булы"]

 //В цикле пройдитесь по всем ключам и распечатайте фамилию каждого солдата.

for key in soldiers.keys {
    print("\(key)")
}

//Сделайте тоже самое со значениями и распечатайте приветствие каждого солдата.

for value in soldiers.values {
    print("\(value)")
}

                                      //HomeWork6

//3) Создать 5 разных Tuples с разными типами данных.Один из них должен содержать все месяца года на русском.Второй на английском

let monthsRusOne = ("Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь")
let monthsEngOne = ("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
let man = (32, "Maksim", 99.5)
let wife = ("Olga", 35, 56.5)
let son = ("Bogdan", 4.5, 21)

//4) Распечатайте Tuples 3 мя разными способами

print(monthsRusOne)
print(man.1)
let (name, age, weight) = son
print(name)

//5) Создайте пустой Tuples (Можно гуглить)

let label: (key: String, value: String)? = nil

//1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.

let collection = (36.6, false, "Maksim")
print(collection.0)
let (temperature, fairytale, myName) = collection
print(fairytale)
let (_, _, c) = collection
print(c)

//2) Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
// первый - превышение скорости: количество пойманных;
// второй - вождение нетрезвым: количество пойманных;
// третий - бесправники: количество пойманных.

let policeMan = (speed: 12, drunk: 18, noLicense: 8)

//Распечатайте наших бедокуров в консоль через print().

print(policeMan)

//3) Выведите каждый параметр в консоль. Тремя способами.

print(policeMan.speed)
print(policeMan.1)
let (_, _, x) = policeMan
print(x)

//4) Создайте второй кортеж — нашего напарника. Значения задайте другие.

let fellowWorker = (speeding: 25, drunking: 20, license: 28)

//5) Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.

let difference = (equalOne: (fellowWorker.license - policeMan.noLicense), equalTwo: (fellowWorker.speeding - policeMan.speed), equalThree: (fellowWorker.drunking - policeMan.drunk))

//Вывести в консоль тремя способами.

print(difference.0)
print(difference.equalTwo)
let (_, _, y) = difference
print(y)
