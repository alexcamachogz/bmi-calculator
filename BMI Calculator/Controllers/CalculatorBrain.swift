//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alex Camacho on 12/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiResult = weight / pow(height, 2)
        let bmiAdvice = ["Eat more pies!", "Fit as a fiddle!", "Eat less pies!"]
        
        let bmiColor = (
            underweight: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),
            healthy: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),
            overweight: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        )
        

        if  bmiResult < 18.5 {
            
            bmi = BMI(value: bmiResult, advice: bmiAdvice[0], color: bmiColor.underweight)
        } else if bmiResult < 24.9 {
            bmi = BMI(value: bmiResult, advice: bmiAdvice[1], color: bmiColor.healthy)
        } else {
            bmi = BMI(value: bmiResult, advice: bmiAdvice[2], color: bmiColor.overweight)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}
