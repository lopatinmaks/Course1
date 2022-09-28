import UIKit

//ТЕОРИЯ, УРОКИ!!!

class Media {
    var name: String

    init(name: String) {
        self.name = name
    }
}
class Film: Media {
    var director: String

    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Music: Media {
    var artist: String

    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

class NewClass {

}
let mediaArray: [AnyObject] = [Film.init(name: "Casablanca", director: "Michel"),
                           Music.init(name: "Blue Shoes", artist: "Elvis Prestley"),
                           Film.init(name: "Kane", director: "Citrizen"),
                           Music.init(name: "The Only", artist: "Chesney"),
                           Film.init(name: "Never Gonna", director: "Rick Astley"), NewClass()]

var count = (musicCount: 0, filmCount: 0)
for obj in mediaArray {
    if obj is Film {
        count.filmCount += 1
    } else if obj is Music {
        count.musicCount += 1
    }
}
print("В вашем плеере находится \(count.filmCount) - фильма и \(count.musicCount) - песни")

for value in mediaArray {
    if let musics = value as? Music {
        print("Song \(musics.name) by \(musics.artist)")
    } else if let films = value as? Film {
        print("Movie \(films.name) director \(films.director)")
    }
}

//----------------------------HomeWork

//a) Библиотеку книг и видео библиотеку фильмов
//b)Возможность добавлять новые книги и фильмы и после добавления должна происходить автоматическая сортировка по алфавиту
//с)Сделать так что б когда я вызову метод(создайте сами его) - "Sort by mood" то фильмы должны отсортировать по настроению:)
//d)И такойже медод придумать для книг 🙂

class LibraryOfBooks {
    var titleOfBook: String
    var author: String
    var genreOfBook: String

    init(titleOfBook: String, author: String, genreOfBook: String) {
        self.titleOfBook = titleOfBook
        self.author = author
        self.genreOfBook = genreOfBook
    }
}

class Books {
    var libraryOfBook = [LibraryOfBooks]()

    func allBooks(titleOfBook: String, author: String, genreOfBook: String) {
        libraryOfBook.append(LibraryOfBooks(titleOfBook: titleOfBook, author: author, genreOfBook: genreOfBook))

        let actions = libraryOfBook
            .sorted(by: {$0.titleOfBook < $1.titleOfBook})
            .map({$0.titleOfBook})
        print(actions)
    }
    func managementListOfBooks(bookGenre: String) {
        let listBook = libraryOfBook.filter {$0.genreOfBook == bookGenre}
        for value in listBook {
            print(value.titleOfBook, value.author, value.genreOfBook)
        }
    }
}
let books = Books()
books.allBooks(titleOfBook: "Три товарища", author: "Эрих Мария Ремарк", genreOfBook: "Роман")
books.allBooks(titleOfBook: "Портрет Дориана Грея", author: "Оскар Уайльд", genreOfBook: "Роман")
books.allBooks(titleOfBook: "Колобок", author: "Народ", genreOfBook: "Сказка")

books.managementListOfBooks(bookGenre: "Роман")
books.managementListOfBooks(bookGenre: "Сказка")

class FilmLibrary {
    var title: String
    var director: String
    var genre: String

    init(title: String, director: String, genre: String) {
        self.title = title
        self.director = director
        self.genre = genre
    }
}

class Films {
    var filmLibrary = [FilmLibrary]()

    func allFilms(title: String, director: String, genre: String) {
        filmLibrary.append(FilmLibrary(title: title, director: director, genre: genre))

        let actions = filmLibrary
            .sorted(by: {$0.title < $1.title})
            .map({$0.title})
        print(actions)
    }
    func management(filmGenre: String) {
        let listFilm = filmLibrary.filter {$0.genre == filmGenre}
        for value in listFilm {
            print(value.title, value.director, value.genre)
        }
    }
}
let films = Films()
films.allFilms(title: "Притворись моей женой", director: "Деннис Дуган", genre: "Комедия")
films.allFilms(title: "Остров проклятых", director: "Мартин Скорсезе", genre: "Триллер")
films.allFilms(title: "Невидимый гость", director: "Ориол Паоло", genre: "Триллер")

films.management(filmGenre: "Комедия")
films.management(filmGenre: "Триллер")
