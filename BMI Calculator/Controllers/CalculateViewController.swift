//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    let calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightSlide(_ sender: UISlider) {
      
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func onWeightSlider(_ sender: UISlider) {
 
        weightLabel.text = String(format: "%.2f", sender.value) + "kg"
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        
        destinationVC.bmiValue = calculatorBrain.calculateBMI(height: Double(heightSlider.value), weight: Double(weightSlider.value))
        
        destinationVC.advice = calculatorBrain.advice
        
        
        
   
    }
}
