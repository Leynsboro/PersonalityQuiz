//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Илья Гусаров on 17.04.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [Question(
            title: "Что вы любите?",
            type: .single,
            answers: [
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Рыбу", animal: .cat),
                Answer(title: "Морковь", animal: .rabbit),
                Answer(title: "Сыр", animal: .turtle)
            ]),
         Question(
             title: "Что вы любите?",
             type: .multiple,
             answers: [
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .cat),
                 Answer(title: "Плавать", animal: .rabbit),
                 Answer(title: "Плавать", animal: .turtle)
             ]),
         Question(
             title: "Что вы любите?",
             type: .ranged,
             answers: [
                 Answer(title: "Ненавижу", animal: .cat),
                 Answer(title: "Не оч люблю", animal: .rabbit),
                 Answer(title: "Средне", animal: .turtle),
                 Answer(title: "Обожаю", animal: .dog)
             ]),
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Собака"
        case .cat:
            return "Кошка"
        case .rabbit:
            return "Заяц"
        case .turtle:
            return "Черепаха"
        }
    }
}
