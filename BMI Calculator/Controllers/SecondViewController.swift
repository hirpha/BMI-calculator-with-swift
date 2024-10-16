//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by mac on 10/16/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // Declare the variable to hold the BMI index
    var bmiIndex: String = "0.0"

    // View lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the background color
        self.view.backgroundColor = .red
        
        // Create a label to display the BMI index
        let label = UILabel()
        label.text = bmiIndex
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        label.textAlignment = .center  // Optional: center the text

        // Add the label as a subview
        self.view.addSubview(label)
    }
}
