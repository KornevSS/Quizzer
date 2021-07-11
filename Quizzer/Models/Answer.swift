//
//  Answer.swift
//  Quizzer
//
//  Created by Сергей Корнев on 10.07.2021.
//

enum Animal: Character {
    case dog = "🐶"
    case rabbit = "🐰"
    case turtle = "🐢"
    case cat = "🐱"
    
    var definition: String {
        switch self {        
        case .dog:
            return "Вам нравится быть с друзьями, Вы всегда окружаете себя людьми, готовыми Вам помочь"
        case .rabbit:
            return "Вам нравится всё мягкое, вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила в мудрости"
        case .cat:
            return "Вы - себе на уме, любите гулять сами по себе"
        }
    }
}

struct Answer {
    let text: String
    let animal: Animal
}
