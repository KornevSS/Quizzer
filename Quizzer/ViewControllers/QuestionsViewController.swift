//
//  QuestionsViewController.swift
//  Quizzer
//
//  Created by Сергей Корнев on 12.07.2021.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var questionProgressView: UIProgressView!
    @IBOutlet var progressSlider: UISlider!
    
    @IBOutlet var singleStackView: UIStackView!
    @IBOutlet var multipleStackView: UIStackView!
    @IBOutlet var rangedStackView: UIStackView!
    
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet var multipleLabels: [UILabel]!
    
    @IBOutlet var multipleSwitches: [UISwitch]!
    
    @IBOutlet var rangedLabels: [UILabel]!
    
    private let questions = Question.getQuestions()
    private var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnswerButtonPressed() {
    }
}

// MARK: - Private methods

extension QuestionsViewController {
    
    private func updateUI() {
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        let currenQuestion = questions[questionIndex]
        questionLabel.text = currenQuestion.text
        let totalProgress = Float(questionIndex) / Float(questions.count)
        questionProgressView.setProgress(totalProgress, animated: true)
        title = "Вопрос №\(questionIndex + 1) из \(questions.count)"
        showCurrentAnswers(for: currenQuestion.type)
    }
    
    private func showCurrentAnswers(for type: AnswerType) {
        switch type {
        
        case .single:
            break
        case .multiple:
            break
        case .ranged:
            break
        }
    }
    
    // Option + CMD + / - Документрование кода!
    
    /// Show single stack view
    ///
    /// - Parameter answers: array with answers
    ///
    /// Show single stack view with answers for current question
    
    private func showSingleStackView(with answers: [Answer]) {
        singleStackView.isHidden = false
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }
    
    private func showMultipleStackView(with answers: [Answer]) {
        multipleStackView.isHidden = false
    }
    
    private func showRangedStackView(with answers: [Answer]) {
        rangedStackView.isHidden = false
    }
}
