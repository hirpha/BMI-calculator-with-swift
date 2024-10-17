//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by mac on 10/17/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation


class CalculatorBrain{
    
    var bmiValue:String = "";
    var advice = ""
    
    var advices:[String] = ["You are underweight", "You are normal weight", "You are overweight", "You are obese"]
    
 func calculateBMI(height:Double, weight:Double)->String {
   let bmi  = weight / pow(height, 2)
     
     bmiValue = String(format: "%.2f", bmi)
   
     switch bmi {
         case 0..<18.5:
         advice = advices[0]
     case 18.5..<25:
         advice = advices[1]
     case 25..<30:
         advice = advices[2]
     case 30..<1000:
         advice = advices[3]
     default:
         advice = "Invalid Value"
     }
     return bmiValue
    }
    
    
}
