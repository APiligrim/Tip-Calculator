//
//  ViewController.swift
//  FinalCalculator
//
//  Created by Dayana Veliyeva on 12/23/18.
//  Copyright © 2018 Dayana Veliyeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }

    override func viewDidAppear(_ animated: Bool) {
        billField.becomeFirstResponder()
    }
    
    
    
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: AnyObject) {
      
        let tipPercentages = [ 0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}


