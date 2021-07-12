//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// MARK: Properties
    
// MARK: Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less then Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        questionLabel.text = quiz.randomElement()
        
        updateUI()
    }

    @IBAction func trueFalseButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    
        updateUI()
    }
    
    private func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    
    }
    
}

