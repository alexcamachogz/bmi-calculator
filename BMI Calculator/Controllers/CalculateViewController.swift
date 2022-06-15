//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    lazy var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedHeight = round(sender.value * 100) / 100.0      
        let heightValue = String(describing: roundedHeight)
        heightLabel.text = "\(heightValue) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weightValue) Kg"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
    
}

