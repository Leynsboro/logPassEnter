//
//  User.swift
//  logPassEnter
//
//  Created by Илья Гусаров on 17.04.2022.
//

struct User {
    let username: String
    let password: String
    let nameSurname: Person
    let photo: String
    let info: Info
    
    static func getUser() -> User {
        User(
            username: "User",
            password: "12345",
            nameSurname:
                Person(
                    name: "Громмаш",
                    surname: "Адский крик"),
            photo: "path",
            info:
                Info(aboutMe: "",
                     hobbies:
                        ["Грызть мебель",
                         "Какать не очень вкусно",
                         "Вечно мяукать"]
                    )
        )
    }
    
    
    static func getUsers() -> [User] {
        [
        
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
