//
//  BMI.swift
//  BMI Calculator
//
//  Created by Dmitriy on 3/10/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(_ value: Float, _ advice: String, _ color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
