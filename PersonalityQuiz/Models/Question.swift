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
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Плавать", animal: .dog)
            ]),
         Question(
             title: "Что вы любите?",
             type: .single,
             answers: [
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .dog)
             ]),
         Question(
             title: "Что вы любите?",
             type: .single,
             answers: [
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .dog),
                 Answer(title: "Плавать", animal: .dog)
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
    case multiply
    case slider
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return ""
        case .cat:
            return ""
        case .rabbit:
            return ""
        case .turtle:
            return ""
        }
    }
}
