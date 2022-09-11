import UIKit

//1) Создать 3 функции:
// первая функция принимает массив Int и сортирует его по порядку (возрастание). После этого распечатывает результат в консоль;

var numbers = [5, 6, 3, 8, 1, 4, 2, 7, 9]

func chisla(one: [Int]) {

    print(one.sorted())
}
chisla(one: numbers)

//// вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по алфавиту. После этого распечатывает результат в консоль;

var fruits = ["Apple", "Lemon", "Banana", "Kiwi", "Pineapple"]
fruits.insert("Pear", at: 0)
fruits.insert("Mandarin", at: 1)
fruits.insert("Orange", at: 2)
func eats(name: [String]) {
    print(name.sorted())
}
eats(name: fruits)

// третья функция принимает 2 массива String и складывает их. После этого распечатывает результат в консоль.

let flower = ["Tulip"]
let color = ["Yellow"]

func plant(name: [String], meaning: [String]) -> [String] {
   return name + meaning
}
let naming = plant(name: flower, meaning: color)
print(naming)

//2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.

var journal = [String]()

func allStudents(name: String, profession: String, grade: String) {
    journal.append(name)
    journal.append(profession)
    journal.append(grade)
}

allStudents(name: "Maksim", profession: "IOS dev", grade: "5")
allStudents(name: "Olga", profession: "Photographer", grade: "4")
allStudents(name: "Bjorn", profession: "Masseur", grade: "3")
allStudents(name: "Bogdan", profession: "Programmist", grade: "5")
allStudents(name: "Nikita", profession: "FootbalPlayer", grade: "5")
allStudents(name: "Valentina", profession: "Android dev", grade: "5")
allStudents(name: "Jury", profession: "Policeman", grade: "3")
allStudents(name: "Viktor", profession: "Java dev", grade: "5")
allStudents(name: "Eugene", profession: "IOS Dev", grade: "5")
allStudents(name: "Igor", profession: "DevOps", grade: "3")

for stud in journal {
    print(stud)
}

//3) Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.

func fullName(name: String, surname: String) -> [String] {
    return [name, surname]
}
let myFullName = fullName(name: "Maksim", surname: "Lopatin")
print(myFullName)

//4) Создайте функцию которая принимает параметры и вычисляет площадь круга.

func circle(radius: Double) -> Double {
    let chisloPi = 3.14
    return chisloPi * (radius * radius)
}
let area = circle(radius: 2.5)
print(area)

//5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.

let names = ("Ivan", "Jan", "Boris", "John", "Melany")
let scores = (5, 4, 3, 4, 5)

let students = ["name": names, "score": scores] as [String : Any]
if students["name"] != nil {
    print("Names students is \(students["name"]!)")
}


//6) Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.

let one = ["4"]
let two = ["5"]
let three = ["7"]


