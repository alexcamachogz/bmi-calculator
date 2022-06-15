//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Alex Camacho on 11/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
