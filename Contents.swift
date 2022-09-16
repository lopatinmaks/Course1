import UIKit

//3) Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.

class House {
    var width: Double
    var height: Double

    func create(width: Double, height: Double) -> Double {
        self.width = width
        self.height = height
        return width * height
    }
    func destroy() {
        print("Дом уничтожен")
    }
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

let productOfNumbers = House.init(width: 9.5, height: 3.2)
productOfNumbers.create(width: productOfNumbers.width, height: productOfNumbers.height)
productOfNumbers.destroy()

//4) Создайте класс с методами, которые сортируют массив учеников.

let journal = ["Maksim" , "Olga", "Bogdan", "Nikita"]
class Students {
    func sorting(names: [String]) {
        let piples = journal.sorted()
        print(piples)
    }
}
let students = Students()
students.sorting(names: journal)

//5) Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.

struct Auto {
    var brand: String
    var model: String
    var color: String
}
let car = Auto(brand: "Tesla", model: "Y", color: "White")
print(car)

/*
Структуры рекомендуется использовать для небольшого количества информации. То есть если пишем сложную программу, высоконагруженную, то используем только классы
Структура в отличии от класса не может наследовать характеристики другой структуры
В структурах инициализатор работает по умолчанию
*/


//Дополнительно(на закрепление всех пройденных тем):
//Напишите простую программу, которая называет комбинации в покере.
//1) Записываем комбинации в массив.
//2) Если определённая комбинация - выводим соответствующую запись в print.
//Результат в консоли примерно такой:
//"У вас бубновый стрит флеш ".
//Подсказки:
//- для мастей можно использовать перечисления(enum),
//- В зависимости от комбинации - в консоли печатаем тот или иной ответ.
//- Комбинации можно взять отсюда:
//http://www.russiapokernews.com/poker-hand-ranking

let combinations = ["Флеш- рояль", "Стрит- флеш", "Каре", "Фулл- хаус", "Флеш", "Стрит"]

enum Suits: String {
    case Hearts = "Червовый"
    case Spades = "Пиковый"
    case Diamonds = "Бубновый"
    case Clubs = "Трефовый"
}

let suits = Suits.Diamonds.rawValue
print("У Вас \(suits) \(combinations[1])")

//3) Написать класс , а в нем метод который будет принимать букву (одну, может быть и типа string, просто будете передавать ему одну букву) и возвращать все имена которые начинаются на эту букву. К примеру, А - Алексей, Александр, Артем, Антон и т. д. Внутри метода или полем класса (тут как удобно, не сильно критично) будет задаваться массив строк (string) в котором будут прописаны имена. Имена откуда-то подгружать не надо, их надо просто захардкодить. Метод должен возвращать отфильтрованный массив с именами.

//class Names {
//    let piples = ["Alex", "Viktor", "Aaron", "Jack", "Alessandro", "Amily", "Sebastian"]
//    if let name =
//}

//Так же написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя. Им распечатаете на консоль то что у вас получилось отфильтровать.

let fruits = ["Lemon", "Banana", "Strawberry", "Apple"]
func names(names: [String]) {
    for food in fruits.sorted() {
        print(food)
    }
}
names(names: fruits)


