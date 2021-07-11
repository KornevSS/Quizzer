//
//  Question.swift
//  Quizzer
//
//  Created by Сергей Корнев on 10.07.2021.
//

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    
}

extension Question {
    
    
    static func getQuestions() -> [Question] {
        
        // Здесь нужно получать информацию из сети!!

        [
            Question(
                text: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(text: "Стейк", animal: .dog),
                    Answer(text: "Рыба", animal: .cat),
                    Answer(text: "Морковь", animal: .rabbit),
                    Answer(text: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                text: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(text: "Есть", animal: .dog),
                    Answer(text: "Спать", animal: .cat),
                    Answer(text: "Обниматься", animal: .rabbit),
                    Answer(text: "Плавать", animal: .turtle)
                ]
            ),
            Question(
                text: "Любите ли вы поездки на машине?",
                type: .ranged,
                answers: [
                    Answer(text: "Прикольно", animal: .dog),
                    Answer(text: "Не знаю", animal: .cat),
                    Answer(text: "Обожаю", animal: .rabbit),
                    Answer(text: "Ну нахер!", animal: .turtle)
                ]
            )
        ]
    }
    
}
