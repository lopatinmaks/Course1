import UIKit

//- создать массив "дни в месяцах"

var daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]


//-элементов содержащих количество дней в соответствующем месяце, используя цикл for и этот массив

for month in daysInMonths {
    //- выведите количество дней в каждом месяце (без имен месяцев)
   print(month)
}


//- используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней

var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for calendar in 0...11 {
    print("\(months[calendar]) - \(daysInMonths[calendar])")
}
//- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)

let calendar = [("January", 31), ("February", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for calendarOne in 0...11 {
    print("\(calendar[calendarOne])")
}


//- сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)

for calendarTwo in (0...11).reversed() {
    print("\(calendar[calendarTwo])")

}

//- для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

let dayOfBirds = (month: 11, day: 26)

var days = 0
for day in 0..<(dayOfBirds.month - 1) {
    days += daysInMonths[day]
}
days += dayOfBirds.day


//1) Создайте массив учеников из 12 мальчиков

var boysArray = ["Maksim", "Bogdan", "Nikita", "Eugene", "Ivan", "Sam", "Bob", "Ken", "William", "Jack", "Jan", "Ted"]


//2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.

boysArray.append("Lina")
boysArray.append("Veronika")
boysArray.append("Helena")
boysArray.append("Malena")
boysArray.insert("Vera", at: 3)
boysArray.insert("Olga", at: 8)
boysArray.insert("Julia", at: 10)

print(boysArray)


//3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.

boysArray.remove(at: 4)
boysArray.removeLast()
boysArray.removeLast()
boysArray.remove(at: 5)
boysArray.remove(at: 4)
boysArray.remove(at: 8)
boysArray.remove(at: 8)
boysArray.remove(at: 8)
boysArray.remove(at: 8)

print(boysArray)


//4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.

var grades = [0, 1, 2, 3, 4, 5]
var gradesTwo = [6, 7, 8, 9, 10]

grades += gradesTwo
grades
//5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».

print("\(boysArray[0]) - \(grades[10]) баллов. Ты прекрасен и немножко восхитителен!")
print("\(boysArray[1]) - \(grades[9]) баллов. Ты прекрасен!")
print("\(boysArray[2]) - \(grades[8]) баллов. Ты по прежнему прекрасен.")
print("\(boysArray[3]) - \(grades[7]) баллов. Ты прекрасна и тебе есть куда стремиться.")
print("\(boysArray[4]) - \(grades[6]) баллов. Нужно поднажать, у тебя все получится!")
print("\(boysArray[5]) - \(grades[5]) баллов. Ты можешь лучше, нужно только приложить усилия.")
print("\(boysArray[6]) - \(grades[4]) баллов. Оценка не радует, попробуй в следующий раз быть внимательнее.")
print("\(boysArray[7]) - \(grades[3]) баллов. Не очень хорошо, чем я могу тебе помочь?")
print("\(boysArray[8]) - \(grades[2]) баллов. Плохо.")
print("\(boysArray[9]) - \(grades[1]) баллов. Плохо, очень плохо!")


//6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль.

let dollarsArray = [20, 50, 1, 5, 100, 2, 10, 20, 100]

var sum = 0
for dollars in dollarsArray {
    sum = sum + dollars
}
print(sum)
