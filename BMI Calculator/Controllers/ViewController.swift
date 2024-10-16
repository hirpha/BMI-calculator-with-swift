//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightSlide(_ sender: UISlider) {
        print(sender.value)
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func onWeightSlider(_ sender: UISlider) {
        print(sender.value)
        weightLabel.text = String(format: "%.2f", sender.value) + "kg"
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        // Create an instance of SecondViewController using storyboard
        let secondVC = SecondViewController()
            secondVC.bmiIndex = String(format: "%.2f", bmi) // Pass the calculated BMI
            self.present(secondVC, animated: true, completion: nil) // Present SecondViewController
     
        
        print("BMI: \(bmi)") // Optional: print BMI value for debugging
    }
}
