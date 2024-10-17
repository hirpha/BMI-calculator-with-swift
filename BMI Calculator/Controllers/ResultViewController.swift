//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by mac on 10/17/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

//    var bmiVAlue: String?
    @IBOutlet weak var recalculateBtn: UIButton!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    let calculatorBrain = CalculatorBrain()
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
       
        resultLabel.text = bmiValue
        // Do any additional setup after loading the view.
    }
    

    @IBAction func reCalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
   
    
 

}
