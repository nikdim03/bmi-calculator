//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dmitriy on 3/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
var bmi: BMI?

struct CalculatorBrain {
    
    func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case 0.0..<18.5:
            bmi = BMI(bmiValue, "EAT MORE PIES!", #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(bmiValue, "YOU'RE FINE!", #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
            bmi = BMI(bmiValue, "EAT LESS, GET HEALTHIER!", #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMIvalue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "ERROR"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.darkGray
    }
}
