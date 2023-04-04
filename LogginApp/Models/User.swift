//
//  User.swift
//  LogginApp
//
//  Created by Maksim Builov on 04/04/2023.
//

// MARC: - Model basis
struct User {
    let login: String
    let password: String
    let basicData: Person
}

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    let age: Int
    let profession: Profession
    let hobby: Hobby
    let biography: String
}

enum Profession: String {
    case teacher = "Teacher 🤓"
    case driver = "Driver 🚚"
    case engineer = "Ingineer 🛠️"
    case pilot = "Pilot ✈️"
    case programmer = "Programmer 👨‍💻"
}

enum Hobby: String {
    case tennis = "Tennis 🏓"
    case swimming = "Swimming 🏊‍♂️"
    case fitness = "Fitness 🏋️"
    case music = "Music 🎧"
}

// MARC: - Users
let guest = User(
    login: "Guest",
    password: "123456",
    basicData: .init(
        name: "Alexey",
        surname: "Efimov",
        age: 35,
        profession: .programmer,
        hobby: .music,
        biography: "А wonderful life!"
    )
)

let user = Person(
    name: "Maksim",
    surname: "Builov",
    age: 32,
    profession: .engineer,
    hobby: .fitness,
    biography: """
Родился и вырос в маленькой деревне на р.Волга. Закончил университет на инженера по работе с вычислительными машинами, комплексами, сетями и системами ИТ. После университета успешно работал в отрасли. Однако, по ряду причин, в 2017 году был вынужден сменить профессию и последние 5 лет отошел от работы в сфере АйТи. Но тяга к отрасли не пропадала ни на день! С января 2023 года я с огромным удовольствием и азартом изучаю основы разработки программных продуктов для IOS устройств под руководством мастера своего дела, лучшего наставка, позитивного и доброго человека - Ефимова Алексея 🤓🎧💻 Процесс обучения идет непросто, но только так, через трудности и ошибки, закрепляются знания и нарабытывается опыт✊ Я полон энергии и все мои победы еще впереди 🚀 !!!
"""
)

