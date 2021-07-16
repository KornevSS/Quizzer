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

extension QuestionsViewController [
}
