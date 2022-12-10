//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cole Scott on 10/4/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        let color = (underweight: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), normal: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), overweight: #colorLiteral(red: 0.9411764741, green: 0.2822667071, blue: 0.3529411852, alpha: 1))
        
        if(bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: color.underweight)
        }
        else if(bmiValue <= 24.9) {
            bmi = BMI(value: bmiValue, advice: "You are healthy", color: color.normal)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less snacks", color: color.overweight)
        }
    }
    
    func getAdvice()-> String {
        return bmi?.advice ?? ""
    }
    func getColor()-> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
}
