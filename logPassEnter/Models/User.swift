//
//  User.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 17.04.2022.
//

struct User {
    let username: String
    let password: String
    let photo: String
    let nameSurname: Person
    let info: Info
    
    static func getUser() -> User {
        User(
            username: "Grom",
            password: "mya",
            photo: "grom",
            nameSurname:
                Person(
                    name: "Громмаш",
                    surname: "Адский Крик"),
            info:
                Info(aboutMe: """
                         Я - нереально сладкий котенок. Мне сейчас всего 1 годик.
                         Меня принесли к моему папе, но он был мне не рад :(
                         Но так получилось, что со временем он полюбил меня больше всего.
                         Я тоже его очень сильно люблю. Никогда бы не оставил его одного.
                     """,
                     hobbies:
                        ["Грызть мебель",
                         "Какать не очень вкусно",
                         "Вечно мяукать"
                        ]
                    )
        )
    }
    
    static func getUsers() -> [User] {
        [
            //На будущее
        ]
    }
    
}

struct Person {
    let name: String
    let surname: String
}

struct Info {
    let aboutMe: String
    let hobbies: [String]
}
