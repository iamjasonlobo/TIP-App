//
//  ViewController.swift
//  TipDemo
//
//  Created by jlobo3 on 7/28/22.
//  Copyright © 2022 Jason Lobo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declaring all UI components into usable form
    @IBOutlet weak var billAmountTextField: UITextField! //input gotten by text field
    @IBOutlet weak var tipAmountLabel: UILabel! //tip calculated
    @IBOutlet weak var tipControl: UISegmentedControl! //tip option selected
    @IBOutlet weak var totalLabel: UILabel! //total amount tip + bill amount
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set title
        self.title = "Tip Calculator"
    }
    
    @IBAction func tipControl(_ sender: Any) {
        
        //creating bill constant from text inputted - also adding optional value of 0 if input isnt proper
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Creating array of percentages to be used for tip calculation
        let tipPercentages = [0.15, 0.18, 0.20]
        //creating tip value - using bill & multiplying by percentage getting index of selected Segment Index
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        // Basic math operation
        let total = bill + tip
        
        
        // Display totalamount in form of String
        tipAmountLabel.text = String(format: "%.2f", tip)
        
        // Display totalamount in form of String
        totalLabel.text = String(format: "%.2f", total)
        
    }
    

}

