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
    var height:Double = 0.0;
    var weight:Double = 0.0;
 
    
 func calculateBMI()->String {
        bmiValue = String(format: "%.2f", weight / pow(height, 2))
     
     return bmiValue
    }
    
    
}
